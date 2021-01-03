curl -i -X PUT -H "Content-Type:application/json" \
    http://localhost:8083/connectors/sink-neo4j-planets-00/config \
    -d '{
            "connector.class": "streams.kafka.connect.sink.Neo4jSinkConnector",
            "topics": "source-rdbms.exoplanets.PLANETS",
            "key.converter": "io.confluent.connect.avro.AvroConverter",
            "key.converter.schema.registry.url": "http://schema-registry:8081",
            "value.converter": "io.confluent.connect.avro.AvroConverter",
            "value.converter.schema.registry.url": "http://schema-registry:8081",
            "neo4j.server.uri": "bolt://neo4j:7687",
            "neo4j.authentication.basic.username": "neo4j",
            "neo4j.authentication.basic.password": "connect",
            "neo4j.topic.cypher.source-rdbms.exoplanets.PLANETS": "MERGE (host:host{host: event.hostname}) MERGE (planet:planet{ id: event.id, pl_name: event.pl_name }) MERGE (discovery:discovery{method: event.discoverymethod, year: event.disc_year, refname: event.disc_refname, pubdate: event.disc_pubdate, locale: event.disc_locale, facility: event.disc_facility, telescope: event.disc_telescope, instrument: event.disc_instrument}) MERGE (host)<-[:HOSTED_BY]-(planet)-[:DISCOVERED_BY]->(discovery)"
        }'
