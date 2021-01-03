curl -i -X PUT -H "Content-Type:application/json" \
    http://localhost:8083/connectors/sink-mongo-planets-00/config \
    -d '{
            "connection.uri": "mongodb://mongodb:27017/kafkaconnect?w=1&journal=true",
            "topics": "source-rdbms.exoplanets.PLANETS",
            "connector.class": "com.mongodb.kafka.connect.MongoSinkConnector",
            "tasks.max": "1",
            "key.converter": "io.confluent.connect.avro.AvroConverter",
            "key.converter.schema.registry.url": "http://schema-registry:8081",
            "value.converter": "io.confluent.connect.avro.AvroConverter",
            "value.converter.schema.registry.url": "http://schema-registry:8081",
            "collection": "mongosink",
            "database": "prototype"
        }'
