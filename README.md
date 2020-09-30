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

# Development Environment

## Requirements

1. install pre-commit from <https://pre-commit.com>, hook dependencies will be automatically downloaded when hooks are first run.
2. install pipenv
3. install docker desktop

## python environment

The python environment and packages is managed by `pipenv`.

To access:

`pipenv shell`

To exit:

`exit`

To install packages in the environment you must be in the shell:

````
pipenv shell
pipenv install package-x
````

## Ansible testing

All roles use molecule to allow standalone development and testing.  see ansible molecule documentation for more details <https://molecule.readthedocs.io/en/latest/>

````
cd roles\role_to_test
molecule test
````
docker image will started and role will be tested.
