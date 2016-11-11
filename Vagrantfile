# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.provider "virtualbox" do |v|
    v.memory = 5120
  end
#  config.vm.box = "geerlingguy/centos7"
  config.vm.box = "centos/7"
#  config.vm.box = "landregistry/centos"

  config.vm.define "ml" do |ml|
#          ml.vm.network "public_network", ip: "192.168.50.20", bridge: "eth0"
	  ml.vm.hostname = "ml-CentOS7.og.com"
	#Admin ports
	  ml.vm.network "forwarded_port", guest: 7999, host: 7999
	  ml.vm.network "forwarded_port", guest: 8000, host: 8000
	  ml.vm.network "forwarded_port", guest: 8001, host: 8001
	  ml.vm.network "forwarded_port", guest: 8003, host: 8003
	#Test port
	  ml.vm.network "forwarded_port", guest: 8010, host: 8010
	  
	  ml.vm.provision "shell",
            path: "ml.provision.sh"
  end

end
