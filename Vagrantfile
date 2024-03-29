# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|

  config.vm.define "viz", primary: true do |viz|
    viz.vm.box = "bento/ubuntu-18.04"
    viz.vm.hostname = "dev-viz"
    viz.vm.network "private_network", ip: "192.168.100.10"
    viz.vm.provider "virtualbox" do |vb|
        vb.customize ["modifyvm", :id, "--memory", 4096]
        vb.customize ["modifyvm", :id, "--cpus", 4]
    end
    viz.vm.network "forwarded_port", id: "ssh", host: 20022, guest: 22
    viz.vm.network "forwarded_port", id: "https", host: 443, guest: 443
    #viz.vm.network "forwarded_port", id: "http", host: 8000, guest: 80
    #viz.vm.network "forwarded_port", id: "grafana", host: 30000, guest: 3000
    #viz.vm.network "forwarded_port", id: "nifi", host: 9090, guest: 9090
    viz.vm.provision "shell",
      path: "vagrant/scripts/provision.sh"
  end

  config.vm.define "sink" do |sink|
    sink.vm.box = "bento/ubuntu-18.04"
    sink.vm.hostname = "dev-sink"
    sink.vm.network "private_network", ip: "192.168.100.11"
    sink.vm.provider "virtualbox" do |vb|
        vb.customize ["modifyvm", :id, "--memory", 2048]
        vb.customize ["modifyvm", :id, "--cpus", 1]
    end
    sink.vm.network "forwarded_port", id: "ssh", host: 20023, guest: 22
    sink.vm.provision "shell",
      path: "vagrant/scripts/provision.sh"
  end

  # deploy after everything is up and running
  #config.trigger.after :up do |trigger|
  #  trigger.warn = "Deploying project via ansible: <CTRL-C> to cancel"
  #  trigger.run = {inline: "ansible-playbook -i dev.ini site.yml --vault-password-file ~/.hpviz-vault"}
  #end
end
