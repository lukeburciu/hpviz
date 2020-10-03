# HPViz

![Ansible-CI](https://github.com/lukeburciu/hpviz/workflows/Ansible-CI/badge.svg)

Honeypot network Visualisation Project

Running on RancherOS 2.4.8

## Team members

- Luke Burciu <lukeb@our.ecu.edu.au>
- Stephen Eaton <sceaton@our.ecu.edu.au>

## Provisioning and Managing Server Configurations

All servers are under config management so manual changes made on them may get overwritten

### 1. Bootstrap for the CI/CD pipeline

new servers need to be bootstrapped for the CI/CD pipeline.

#### pre-requisites

* existing account with elevated privileges (example shows root user)
* your pub key in authorize_hosts file for that user

#### Command

'ansible-playbook -i "x.x.x.x," bootstrap.yml --extra-vars "user=root"'

note the ',' in the '-i' parameter.  Multiple IP address can be added seperated with ',' and make sure trailing ',' still exists or will look for an inventory file of that name and fail.

The following is performed by the bootstrap.yml playbook:

1. 'hpviz-ci' is added as a user to the remote server(s)
2. 'hpviz-ci' ssh pub key is added to users authorized keys file
3. 'wheel' group is added if required
4. 'wheel' group is added to sudo and set to NOPASS
5. 'hpviz-ci' is added to wheel group

### 2. managing users

Shell access to the project servers is only accessible via ssh with a valid key i.e. password authentication is disabled by default.

All HPViz project server users are under config management and are managed the the group_vars/viz/vars.yml or group_vars/sink/vars.ymlin the `user_list` variable.

1. users must have a public ssh key defined as password authentication is disabled
2. To remove a user from all groups replace the group list with empty string ''
3. Removing users change 'state: absent'  all their directories under /home/username will be removed
4. pub_key must be present for active users
5. all users are created with password login disabled
6. multiple groups if the the user is a member of is added as a list (see roles\user_management\README.md).  These groups must already exist on the remote system.

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
