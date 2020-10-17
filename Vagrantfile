# -*- mode: ruby -*-
# vi: set ft=ruby :


servers=[
  {
    :hostname => "viz",
    :ip => "192.168.100.10",
    :box => "bento/ubuntu-18.04",
    :ram => 4096,
    :cpu => 2,
    :shared_dir => "vagrant/viz"
  },
  {
    :hostname => "sink",
    :ip => "192.168.100.11",
    :box => "bento/ubuntu-18.04",
    :ram => 2048,
    :cpu => 2,
    :shared_dir => "vagrant/sink"
  }
]


# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
      servers.each do |machine|
        config.vm.define machine[:hostname] do |node|
            node.vm.box = machine[:box]
            node.vm.hostname = machine[:hostname]
            node.vm.network "private_network", ip: machine[:ip]
            node.vm.provider "virtualbox" do |vb|
                vb.customize ["modifyvm", :id, "--memory", machine[:ram]]
            end
            #node.vm.synced_folder :shared_dir , "/vagrant_data"
        end
      end


  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "bento/ubuntu-18.04"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # NOTE: This will enable public access to the opened port
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine and only allow access
  # via 127.0.0.1 to disable public access
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.

  #config.vm.synced_folder "vagrant/viz", "/vagrant_data"

  #config.vm.provider "virtualbox" do |vb|
  #  # Customize the amount of memory on the VM:
  #  vb.memory = "4096"
  #end

  #config.vm.provision "ansible" do |ansible|
  #  ansible.playbook = "playbook.yml"
  #end
end
