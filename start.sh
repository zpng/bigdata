#!/bin/bash

echo "docker-compose -f docker-compose.yml up -d namenode datanode1 datanode2 datanode3 resourcemanager nodemanager1 historyserver " 
docker-compose -f docker-compose.yml up -d namenode datanode1 datanode2 datanode3 resourcemanager nodemanager1 historyserver

echo "sleep 5"
sleep 5

echo "docker-compose -f docker-compose.yml up -d hive-metastore-postgresql hive-server hive-metastore hive-metastore-postgresql mysql-server"
docker-compose -f docker-compose.yml up -d hive-metastore-postgresql hive-server hive-metastore hive-metastore-postgresql mysql-server

echo "sleep 5"
sleep 5

echo "docker-compose -f docker-compose.yml up -d spark-master spark-worker"
docker-compose -f docker-compose.yml up -d spark-master spark-worker

echo "sleep 5"
sleep 5

echo "docker-compose -f docker-compose.yml up -d spark-master spark-worker"
docker-compose -f docker-compose.yml up -d spark-master spark-worker

echo "sleep 5"
sleep 5

echo "docker-compose -f docker-compose.yml up -d elasticsearch kibana"
docker-compose -f docker-compose.yml up -d elasticsearch kibana

echo "sleep 5"
sleep 5

echo "docker-compose -f docker-compose.yml up -d zookeeper kafka kafka-manager"
docker-compose -f docker-compose.yml up -d zookeeper kafka kafka-manager

echo "sleep 5"
sleep 5

echo "docker-compose -f docker-compose.yml up -d zookeeper kafka kafka-manager"
docker-compose -f docker-compose.yml up -d zookeeper kafka kafka-manager

echo "sleep 5"
sleep 5

echo "docker-compose -f docker-compose.yml up -d jobmanager taskmanager"
docker-compose -f docker-compose.yml up -d jobmanager taskmanager