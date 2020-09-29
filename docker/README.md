# hpviz Docker Environment

This directory refers to configurations made for the docker-compose environment.

## To be added

## To be removed

## Current containers

Docker Image | Active | Comments
------------ | -------| --------
kafka (broker) | [x] | N/A
zookeeper | [x] | Used with Kafka, dependency
schema-registry | [x] | Used with Kafka
connect-datagen | [x] | Used with Kafka
control-center | [] | Confluent Enterprise License. Removed 20200929
ksqldb-server  | [x] | Used with Kafka
ksqldb-cli | [x] | Used with Kafka
ksql-datagen | [x] | Used with Kafka
rest-proxy | [x] | Used with Kafka
neo4j | [x] | Graph-based visualisation [link](neo4j.com/) 
nifi | [x] | N/A
grafana | [x] | ubuntu docker base image -ubuntu flag
elasticsearch | [x] | N/A
dejavu | [x] | UI for elasticsearch
