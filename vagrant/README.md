# Shared Development Directories

These two directories are shared with their relavant vagrant boxes for the development environment.

Anything put in them will be available to the Virtual machine under /vagrant_data

custom directories can be added in the Vagrantfile for each VM

```
config.vm.synced_folder "../vagrant/viz", "/vagrant_data"
```
