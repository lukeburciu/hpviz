
Vagrant is used to provide a virtual development environment on the local developers machine that closely resembles the production environment and allows to fully deploy the ansible playbooks in exactly the same manner as the production environment.

!!! Info
    Vagrant allows all developers to develop under the exactly same environment and is a key concept of DevOps as it helps prevent errors due to different development environments from getting into production.

## Requirements

1. Virtual box hypervisor installed <https://virtualbox.org>
2. vagrant installed <https://www.vagrantup.com/>

## Starting the development environment

`vagrant up` to start up

## Stopping

`vagrant halt` to stop

## Provisioning

Provisioning will occur the very first time the environment is started with the 'up' command or after a 'destroyed', it will set-up the VMs to a known state.

`vagrant provision`

### Rerun provisioning ( reapply vagrant provisioning)

This will re-run any provisioning scripts associated with the vagrant box, it is similar to when a new box gets created after a destroy comment, except no local changes to any VMs are lost, i.e. changes by the developer

`vagrant provision`

### destroying  (start again with clean slate)

This will destroy everything and reset all vms back to a clean slate, all developer changes on the VMs will be lost.

```
vagrant destroy
vagrant up
```
## Misc

### Restart all virtual machines

`vagrant restart`

Stop all virtual machines

`vagrant halt`

### Connecting to the VM environment

`vagrant ssh` defaults to viz vm
`vagrant ssh sink` to login into ingestion sink

### deploying ansible script

Example that will deploy entire project

`ansible-playbook -i dev.ini site.yml --vault-password-file ~/.hpviz-vault`

Requires the vault password in a file, not under the project directory, in this case stored `~/.hpviz-vault`

use tags to target specific tasks:

`ansible-playbook -i dev.ini site.yml --vault-password-file ~/.hpviz-vault --tags containers`

example will just deploy containers portion of the playbook

tags must be defined in the playbooks to work
