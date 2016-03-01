# -*- mode: ruby -*-
# vi: set ft=ruby :

BOX = "ubuntu/trusty32"
MEMORY = "1024"
GUI = false

Vagrant.configure(2) do |config|
  config.vm.box = BOX

  config.vm.provider "virtualbox" do |vb|
    vb.gui = GUI
    vb.memory = MEMORY
  end

  # Activate NFS folder sync
  config.vm.network :private_network, ip: "192.168.42.42"
  config.vm.synced_folder "../", "/vagrant", type: "nfs"

  config.vm.provision "shell", path: "provision.sh"
end
