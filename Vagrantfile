# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.define "centos7" , primary: true do |centos7|
    centos7.vm.synced_folder ".", "/vagrant", disabled: true
    centos7.vm.box = "centos/7"
    centos7.vm.network "private_network", ip: "192.168.33.85"
    centos7.vm.hostname = "centos7.dtp" 
    centos7.vm.provider "virtualbox" do |vb|
      vb.name = "centos7"
      vb.memory = 1024
      end
   end  
end