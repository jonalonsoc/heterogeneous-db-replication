#!/bin/sh

while [ $(curl -s -o /dev/null -w %{http_code} http://localhost:8083/connectors) -ne 200 ] ; do
  echo $(date) "\t Kafa Connect is initialising..."
  sleep 5
done
echo $(date) "\t Kafka Connect is ready"
