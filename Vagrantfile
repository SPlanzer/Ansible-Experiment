# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|

  # create db node
  config.vm.define :db do |db_config|
      db_config.vm.box = "ubuntu/trusty64"
      db_config.vm.hostname = "db"
      db_config.vm.network :private_network, ip: "10.0.15.18"
      db_config.vm.provider "virtualbox" do |vb|
        vb.memory = "512"
      end
      
      config.vm.provision :ansible do |ansible|
      ansible.verbose = "v"
      ansible.playbook = "deployment/playbook.yml"
      end
  end
end
