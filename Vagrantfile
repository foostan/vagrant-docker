# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "3scale/docker"

  config.vm.provision "shell", inline: <<-EOS
    # install packages
    sudo apt-get update
    sudo apt-get install wget

    # setup docker
    sudo docker pull ubuntu
  EOS
end
