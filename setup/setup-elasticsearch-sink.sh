# Configure template in Elasticsearch
curl -X PUT "http://localhost:9200/_template/kafkaconnect/" -H 'Content-Type: application/json' -d'
{
  "template": "*",
  "settings": {
    "number_of_shards": 1,
    "number_of_replicas": 0
  },
  "mappings": {
    "dynamic_templates": [
      {
        "all": {
          "match": "*date",
          "mapping": {
            "type": "text"
          }
        }
      }
    ]
  }
}'

# Setup Elasticsearch connector
curl -i -X PUT -H "Content-Type:application/json" \
    http://localhost:8083/connectors/sink-elastic-planets-00/config \
    -d '{
        "connector.class": "io.confluent.connect.elasticsearch.ElasticsearchSinkConnector",
        "topics": "source-rdbms.exoplanets.PLANETS",
        "connection.url": "http://elasticsearch:9200",
        "type.name": "_doc",
        "key.ignore": "true",
        "schema.ignore": "false"
    }'
