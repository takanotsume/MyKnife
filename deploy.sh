#!/bin/bash

ssh-keygen -f "/home/msim/.ssh/known_hosts" -R myknife
knife solo bootstrap vagrant@myknife -i ~/.vagrant.d/insecure_private_key