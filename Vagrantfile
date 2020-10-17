# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|

  config.vm.define "viz", primary: true do |viz|
    viz.vm.box = "bento/ubuntu-18.04"
    viz.vm.hostname = "viz001"
    viz.vm.network "private_network", ip: "192.168.100.10"
    viz.vm.provider "virtualbox" do |vb|
        vb.customize ["modifyvm", :id, "--memory", 4096]
    end
    viz.vm.provision "shell",
      path: "vagrant/scripts/provision.sh"
    viz.vm.synced_folder "vagrant/shared/docker_images" , "/var/lib/docker/image"
  end

  config.vm.define "sink" do |sink|
    sink.vm.box = "bento/ubuntu-18.04"
    sink.vm.hostname = "thesink"
    sink.vm.network "private_network", ip: "192.168.100.11"
    sink.vm.provider "virtualbox" do |vb|
        vb.customize ["modifyvm", :id, "--memory", 2048]
    end
    sink.vm.provision "shell",
      path: "vagrant/scripts/provision.sh"
    sink.vm.synced_folder "vagrant/shared/docker_images" , "/var/lib/docker/image"
    sink.vm.synced_folder "vagrant/sink/data" , "/data"
  end

  # deploy after everything is up and running
  config.trigger.after :up do |trigger|
    trigger.warn = "Deploying project via ansible: <CTRL-C> to cancel"
    trigger.run = {path: "ansible-playbook -i dev.ini site.yml --vault-password-file ~/.hpviz-vault"}
  end
end
