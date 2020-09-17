# hpviz-

Running on RancherOS 2.4.8

## neo4j container configurations

To be added to docker file:
- 1. way to automatically create ssl certificate.

MANUAL WAY:

- Based on: https://medium.com/neo4j/getting-certificates-for-neo4j-with-letsencrypt-a8d05c415bbd
- apt-get update
- apt-get install software-properties-common
- apt install gpg-agent
- add-apt-repository ppa:certbot/certbot
- apt-get update
- apt-get install -y certbot


