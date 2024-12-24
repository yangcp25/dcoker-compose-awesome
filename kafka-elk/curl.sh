curl -X POST -H "Content-Type: application/json" \
    --data '{
        "name": "kafka-connect-elasticsearch",
        "config": {
            "connector.class": "io.confluent.connect.elasticsearch.ElasticsearchSinkConnector",
            "tasks.max": "1",
            "topics": "kratos-logs",
            "connection.url": "http://127.0.0.1:9200",
            "key.ignore": "true",
            "type.name": "kafka-connect",
            "schema.ignore": "true"
        }
    }' \
    http://localhost:8083/connectors
