#!/bin/bash

gem install knife-solo --no-ri --no-rdoc

# To ssh connect
# ssh -i ~/.vagrant.d/insecure_private_key vagrant@myknife

# To ini a chef project
# knife solo init .

# To run chef
# knife solo bootstrap vagrant@myknife -i ~/.vagrant.d/insecure_private_key

# For testing remove local key
# ssh-keygen -f "/home/msim/.ssh/known_hosts" -R myknife