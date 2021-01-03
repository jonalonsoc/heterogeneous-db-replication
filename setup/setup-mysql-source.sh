curl -i -X PUT -H "Content-Type:application/json" \
    http://localhost:8083/connectors/source-debezium-planets-00/config \
    -d '{
            "connector.class": "io.debezium.connector.mysql.MySqlConnector",
            "database.hostname": "mysql",
            "database.port": "3306",
            "database.user": "prototype",
            "database.password": "liverpool",
            "database.server.id": "42",
            "database.server.name": "rdbms",
            "table.whitelist": "exoplanets.PLANETS",
            "database.history.kafka.bootstrap.servers": "kafka:29092",
            "database.history.kafka.topic": "dbhistory.exoplanets" ,
            "decimal.handling.mode": "double",
            "include.schema.changes": "true",
            "transforms": "unwrap,addTopicPrefix",
            "transforms.unwrap.type": "io.debezium.transforms.ExtractNewRecordState",
            "transforms.addTopicPrefix.type":"org.apache.kafka.connect.transforms.RegexRouter",
            "transforms.addTopicPrefix.regex":"(.*)",
            "transforms.addTopicPrefix.replacement":"source-$1"
    }'
