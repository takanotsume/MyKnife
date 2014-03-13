# -*- mode: ruby -*-
# vi: set ft=ruby :

# General project settings
##########################

  # Vagrantfile API/syntax version.
  VAGRANTFILE_API_VERSION = "2"

  # IP Address for the host only network
  ip_address = "192.168.33.11"

  # The project name is base for directories, hostname and alike
  project_name = "myknife"

# Vagrant configuration
#################################

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "trusty64"
  config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"

  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  config.vm.hostname =  project_name
  config.vm.network :private_network, ip: ip_address
  config.vm.provision :hostmanager

end
