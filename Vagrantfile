# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "Vagrant"
  config.vm.hostname = "Vagrant"
  config.vm.box = "ubuntu/bionic64"
  config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
  config.vm.network "forwarded_port", guest: 443, host: 4440, host_ip: "127.0.0.1"
  config.vm.network "forwarded_port", guest: 22, host: 2220, host_ip: "127.0.0.1"
  

  config.vm.provider "virtualbox" do |vb|
    vb.name = "Vagrant"
    vb.gui = false
    vb.memory = "1024"
   end

  config.vm.provision "shell", :path => "bootstrap.sh"

end
