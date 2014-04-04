# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ffuenf/ubuntu-13.10-server-amd64"

  config.vm.provision "shell", inline: <<-EOS
    # Installation for ubuntu
    # http://docs.docker.io/en/latest/installation/ubuntulinux/
    #
    # Dependencies
    sudo apt-get update
    sudo apt-get install linux-image-extra-`uname -r`

    # Installation
    sudo apt-get install cgroup-lite curl
    curl -s https://get.docker.io/ubuntu/ | sudo sh
  EOS
end
