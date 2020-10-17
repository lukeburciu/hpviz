# HPViz - Development

## Vagrant environment

### Requirements

1. Virtual box hyber visor installed <https://virtualbox.org>
2. vagrant installed <https://www.vagrantup.com/>

### provisioning

`vagrant up` to start up

`vagrant down` to stop

### destroying  (start again with clean slate)

This will destroy everythign and reprocision the Vms, starting from a clean slate.

You should look at doing this before committing prior to a PR

```
vagrant destroy
vagrant up
```

### Rerun provisioning ( reapply vagrant provisioning)

This will re-run tany provisioning scripts associated with the vagrant box, it is simialr to when a new box gets created after a destroy comment, except no local changes to any VMs are lost

`vagrant provision`


### Misc

Restart all virtal machines

`vagrant restart`

Stop all virtual machines

`vagrant halt`

## Connecting to the VM environment

vagrant ssh
