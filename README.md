# HPViz

![Ansible-CI](https://github.com/lukeburciu/hpviz/workflows/Ansible-CI/badge.svg)

Honeypot Data Visualisation Project.

## Team members

- Luke Burciu <lburciu@our.ecu.edu.au>
- Stephen Eaton <sceaton@our.ecu.edu.au>

## Provisioning and Managing Server Configurations

All servers are under config management so manual changes made on them may get overwritten


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
## Ansible


### Installing dependencies

To install galaxy roles into local development environment

`ansible-galaxy role install --role-file requirements.yml`

### Role development

All roles use molecule to allow standalone development and testing.  see ansible molecule documentation for more details <https://molecule.readthedocs.io/en/latest/>

````
cd roles\role_to_test
molecule test
````
docker image will started and role will be tested.

### Role development

#### 1) Creating a new role

````
cd roles
molecule init <new_role_name>
````

This will set up the directory structure of the role to best practices

make sure to edit:
1. meta/main.yml
2. README.md
3. molecule/molecule.yml and update to the following:

````
platforms:
  - name: instance
    image: geerlingguy/docker-ubuntu1804-ansible:latest
    command: ""
    volumes:
      - /sys/fs/cgroup:/sys/fs/cgroup:ro
    privileged: true
    pre_build_image: true
````

#### 2) Development process

Use molecule to start up the development / test environment and then develop the role as per normal.

````
cd roles\role_under_dev
molecule converge
````

This will spin up the environment, rerun every time you wan to re-run/re-test the role against the VM, it does not 'clean' out your previous changes.

To start with a fresh VM image:

`molecule destroy`

To login to the VM and troubleshoot:

`molecule login`


#### 3) Useful commands

Use ansible-playbook -i dev.ini site.yml --vault-password-file ~/.hpviz-vault --tags 'tag1, tag2' to run each playbook by specific tags, rather than the whole playbook. Useful for testing
