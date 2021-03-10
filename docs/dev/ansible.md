!!! Important
    See [Ansible Documentation](https://docs.ansible.com/ansible/latest/index.html) for Reference documentation.

## Installing and updating ansible dependencies

```shell
make galaxy
```

Will update both roles and collections from [ansible galaxy](https://galaxy.ansible.com/)

### Roles

```shell
make roles
```

This will update the roles for the project.

!!! Important
    Add project roles to __requirements.yml__ in the project root directory.


### Collections

```shell
make collections
```

This will update the collections for the project.

!!! Important
    Add project roles to __requirements.yml__ in the project root directory.

### requirements.yml

!!! example "requirements.yml"
    ```yaml
    --8<-- "././requirements.yml"
    ```

## Testing in the Vagrant Environment

```shell
make deploy-dev
```

This will deploy the site to the dev environment and can be re-run anytime.

!!! Note
    Assumes that the Vagrant dev environment is up

!!! example "Example Output"
    ```shell
    TASK [geerlingguy.nginx : Ensure nginx service is running as configured.] **********************************************************************************************************************************************************************************************
    ok: [dev-viz]

    TASK [Install latest passlib with pip] *********************************************************************************************************************************************************************************************************************************
    ok: [dev-viz]

    TASK [provision nifi users] ********************************************************************************************************************************************************************************************************************************************
    ok: [dev-viz]

    TASK [reload nginx] ****************************************************************************************************************************************************************************************************************************************************
    changed: [dev-viz]

    PLAY [Manages ingest data directory] ***********************************************************************************************************************************************************************************************************************************

    TASK [Checks directory permissions [/data]] ****************************************************************************************************************************************************************************************************************************
    ok: [dev-sink]

    PLAY RECAP *************************************************************************************************************************************************************************************************************************************************************
    dev-sink                   : ok=44   changed=4    unreachable=0    failed=0    skipped=13   rescued=0    ignored=0
    dev-viz                    : ok=81   changed=12   unreachable=0    failed=0    skipped=22   rescued=0    ignored=0

    ```

## Role development

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
