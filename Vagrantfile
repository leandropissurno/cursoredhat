# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.define "centos7" , primary: true do |centos7|
    centos7.vbguest.auto_update = false
    centos7.vm.synced_folder ".", "/vagrant", disabled: true
    centos7.vm.box = "centos/7"
    centos7.vm.network "private_network", ip: "192.168.33.85"
    centos7.vm.hostname = "centos7.dtp" 
    centos7.vm.provider "virtualbox" do |vb|
      vb.name = "centos7"
      vb.memory = 1024
      unless File.exist?("data.vdi")
          vb.customize ["storagectl", :id, "--name", "SATA Controller", "--add", "sata"]
          vb.customize ["createhd",  "--filename", "data.vdi", "--size", "5120"]
          vb.customize ["storageattach", :id, "--storagectl", "SATA Controller", "--port", "0", "--type", "hdd", "--medium", "data.vdi"]
      end
    end
  end  
end