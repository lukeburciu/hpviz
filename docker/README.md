# hpviz Docker Environment

This directory refers to configurations made for the docker-compose environment.

## To be added

## To be removed

## Current containers

Docker Image | Active | Comments
------------ | -------| --------
kafka (broker) | YES | N/A
zookeeper | YES | Used with Kafka, dependency
schema-registry | YES | Used with Kafka
connect-datagen | YES | Used with Kafka
control-center | NO | Confluent Enterprise License. Removed 20200929
ksqldb-server  | YES | Used with Kafka
ksqldb-cli | YES | Used with Kafka
ksql-datagen | YES | Used with Kafka
rest-proxy | YES | Used with Kafka
neo4j | YES | Graph-based visualisation [link](neo4j.com/) 
nifi | YES | N/A
grafana | YES | ubuntu docker base image -ubuntu flag
elasticsearch | YES | N/A
dejavu | YES | UI for elasticsearch
