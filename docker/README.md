# HPviz Docker Environment



## Get started
This directory refers to configurations made for the docker environment.

### Manual Deployment
If you wish to manually deploy the docker containers:

```bash
cd hpviz/docker
docker-compose -f docker-compose.yml -f production.yml up -d
```

### Production Parameters

production.yml will provide additional parameters applied when deploying to production.

Example: Additional params for enabling TLS/SSL
```yml
services:

  neo4j:
    - VIRTUAL_PROTO=https
    - VIRTUAL_PORT=443
  nifi:
    - VIRTUAL_PROTO=https
    - VIRTUAL_PORT=443
  grafana:
    - VIRTUAL_PROTO=https
    - VIRTUAL_PORT=443
  dejavu:
    - VIRTUAL_PROTO=https
    - VIRTUAL_PORT=443

```
See: [docker wiki - Use compose in production](https://docs.docker.com/compose/production/)

See: [nginx-proxy: SSL Backends](https://github.com/nginx-proxy/nginx-proxy#ssl-backends)

## To be added

[TLS/SSL Backends](https://github.com/nginx-proxy/nginx-proxy) via nginx-proxy

[nginx-proxy-companion](https://github.com/nginx-proxy/docker-letsencrypt-nginx-proxy-companion) for automated SSL certificate encryption


## Current containers

Docker Image | Active | Comments
------------ | -------| --------
kafka (broker) | YES | N/A
zookeeper | YES | Used with Kafka, dependency
schema-registry | YES | Used with Kafka
connect | YES | Replaced 'connect-datagen' for Neo4j Sink
control-center | NO | Confluent Enterprise License. Removed 20200929
ksqldb-server  | YES | Used with Kafka
ksqldb-cli | YES | Used with Kafka
ksql-datagen | YES | Used with Kafka
rest-proxy | YES | Used with Kafka
neo4j | YES | Graph-based visualisation [link](https://neo4j.com/)
nifi | YES | N/A
grafana | YES | reverted to alpine image due to SSL requirements
elasticsearch | YES | N/A
dejavu | YES | UI for elasticsearch
