My Knife
========

Demo of knife, chef, berrshelf using vargant generated VM ...

Prerequesites
===

Read https://www.digitalocean.com/community/articles/initial-server-setup-with-ubuntu-12-04

Demo
===

    cd MyKnife
    vagrant up
    ./deploy.sh

Useful commands
===

### To init a chef project:
    * knife solo init .

### To run chef
    * knife solo bootstrap vagrant@myknife -i ~/.vagrant.d/insecure_private_key

### For testing remove local key
    * ssh-keygen -f "/home/msim/.ssh/known_hosts" -R myknife

