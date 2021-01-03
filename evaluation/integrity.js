const csv = require('csv-parser');
const fs = require('fs');
const { MongoClient } = require('mongodb');
const neo4j = require('neo4j-driver');
const { Client: ElasticsearchClient } = require('@elastic/elasticsearch');


const stream = fs.createReadStream('../datasets/PS_2020.11.23_01.56.29.csv');

const evaluate = async () => {
    const mongoPromises = [];
    const neo4jPromises = [];
    const elasticsearchPromises = [];

    let mongoInconsistencies = 0;
    let neo4jInconsistencies = 0;
    let elasticsearchInconsistencies = 0;

    console.log('Opening database connections...');

    // Mongo client setup
    const uri = 'mongodb://localhost:27017';
    const mongoClient = new MongoClient(uri);
    await mongoClient.connect();
    const mongoDatabase = mongoClient.db('prototype');
    const mongoCollection = mongoDatabase.collection('mongosink');

    // Neo4j client setup
    const neo4jClient = neo4j.driver(
        'neo4j://localhost',
        neo4j.auth.basic('neo4j', 'connect')
    );

    // Elasticsearch client setup
    const elasticsearchClient = new ElasticsearchClient({ node: 'http://localhost:9200' });

    const evaluateIfNeo4jRecordIsDifferent = async (neo4jClient, record) => {
        const session = await neo4jClient.session({
            defaultAccessMode: neo4j.session.READ
        });

        try {
            const result = await session.run('MATCH (d:discovery)--(p:planet)--(h:host) WHERE p.id = $id RETURN * LIMIT 1',
                { id: parseInt(record.id) }
            );

            const neo4jRecord = result.records[0];
            if (!neo4jRecord) {
                console.log(`Record ${record.id} not found in Neo4j`);
                neo4jInconsistencies++;
                return;
            }

            const planet = neo4jRecord.get('p');
            const discovery = neo4jRecord.get('d');
            const host = neo4jRecord.get('h');

            if (
                planet.properties.pl_name != record.pl_name ||
                host.properties.host != record.hostname ||
                discovery.properties.method != record.discoverymethod ||
                discovery.properties.year != record.disc_year ||
                discovery.properties.refname != record.disc_refname ||
                discovery.properties.pubdate != record.disc_pubdate ||
                discovery.properties.locale != record.disc_locale ||
                discovery.properties.facility != record.disc_facility ||
                discovery.properties.telescope != record.disc_telescope ||
                discovery.properties.instrument != record.disc_instrument
            ) {
                console.log(`Incosostency found with record ${record.id} in Neo4j`);
                neo4jInconsistencies++;
            }
        } finally {
            await session.close();
        }
    }

    const evaluateIfMongoRecordIsDifferent = async (mongoCollection, record) => {
        const mongoRecord = await mongoCollection.findOne({ id: parseInt(record.id) });
        if (!mongoRecord) {
            console.log(`Record ${record.id} not found in MongoDB`);
            mongoInconsistencies++;
            return;
        }

        if (isDatabaseRecordDifferentToOriginal(mongoRecord, record)) {
            console.log(`Incosostency found with record ${record.id} in MongoDB`);
            mongoInconsistencies++;
        }
    }

    const evaluateIfElasticsearchRecordIsDifferent = async (elasticsearchClient, record) => {
        const result = await elasticsearchClient.search({
            index: 'source-rdbms.exoplanets.planets',
            size: 1,
            body: {
                query: {
                    match: { id: record.id }
                }
            }
        });

        if (result.body.hits.hits.length === 0) {
            elasticsearchInconsistencies++;
            console.log(`Record ${record.id} not found in Elasticsearch`);
            return;
        }
        const elasticsearchRecord = result.body.hits.hits[0]._source;

        if (isDatabaseRecordDifferentToOriginal(elasticsearchRecord, record)) {
            console.log(`Incosostency found with record ${record.id} in Elasticsearch`);
            elasticsearchInconsistencies++;
        }
    }

    const isDatabaseRecordDifferentToOriginal = (databaseRecord, originalRecord) => {
        for (const [key, value] of Object.entries(originalRecord)) {
            if (databaseRecord[key] != value) {
                return true;
            }
        }
        return false;
    }

    console.log('Reading CSV file...');

    // Wait for all queries to finish every 5 seconds to avoid having too many open connections
    const interval = setInterval(async () => {
        stream.pause();
        await Promise.all([...mongoPromises, ...neo4jPromises, ...elasticsearchPromises]);
        stream.resume();
    }, 5000);

    stream.pipe(csv({ skipComments: true }))
        .on('data', async (record) => {
            mongoPromises.push(evaluateIfMongoRecordIsDifferent(mongoCollection, record));
            neo4jPromises.push(evaluateIfNeo4jRecordIsDifferent(neo4jClient, record));
            elasticsearchPromises.push(evaluateIfElasticsearchRecordIsDifferent(elasticsearchClient, record));
        })
        .on('finish', async () => {
            await Promise.all([...mongoPromises, ...neo4jPromises, ...elasticsearchPromises]);

            console.log(`Number of incorrect records in MongoDB: ${mongoInconsistencies}`);
            console.log(`Number of incorrect records in Neo4j: ${neo4jInconsistencies}`);
            console.log(`Number of incorrect records in Elasticsearch: ${elasticsearchInconsistencies}`);
            await Promise.all([
                mongoClient.close(),
                neo4jClient.close(),
                elasticsearchClient.close()
            ]);
            clearInterval(interval);
        });
}

evaluate().catch(console.dir);
