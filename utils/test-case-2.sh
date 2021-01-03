#!/bin/sh

echo "Inserting records"
cd ./evaluation/ && node insert.js

sleep 60
cd ..
docker-compose stop elasticsearch
