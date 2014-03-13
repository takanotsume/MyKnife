#!/bin/bash

# Remove actual virtualbox and vagrant version
sudo apt-get remove virtualbox vagrant

# Install latest virtualbox
wget -P /tmp http://download.virtualbox.org/virtualbox/4.3.8/virtualbox-4.3_4.3.8-92456~Ubuntu~raring_amd64.deb
sudo dpkg -i /tmp/virtualbox-4.3_4.3.8-92456~Ubuntu~raring_amd64.deb

# Install latest vagrant
wget -P /tmp https://dl.bintray.com/mitchellh/vagrant/vagrant_1.4.3_x86_64.deb
sudo dpkg -i /tmp/vagrant_1.4.3_x86_64.deb

# Install latest virtualbox guest addition
wget -P /tmp http://download.virtualbox.org/virtualbox/4.3.8/VBoxGuestAdditions_4.3.8.iso
sudo mkdir /media/iso
sudo mount -o loop /tmp/VBoxGuestAdditions_4.3.8.iso /media/iso
sudo /media/iso/VBoxLinuxAdditions.run

# Install base packages
sudo apt-get install vagrant ruby ruby-dev gem chef

# Install vagrant plugin
vagrant plugin install vagrant-hostmanager
vagrant plugin install vagrant-omnibus