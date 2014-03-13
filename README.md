My Knife
========

Demo of knife, chef, berrshelf using vargant generated VM ...

Prerequesites
===

Ruby 1.9.x, gem, vagrant & berkshelf

### To install knife solo:
    * gem install knife-solo --no-ri --no-rdoc

Demo
===

    cd MyKnife
    vagrant up
    knife solo bootstrap vagrant@myknife -i ~/.vagrant.d/insecure_private_key

Useful commands
===

### To init a chef project:
    * knife solo init .

### To run chef
    * knife solo bootstrap vagrant@myknife -i ~/.vagrant.d/insecure_private_key

### For testing remove local key
    * ssh-keygen -f "/home/msim/.ssh/known_hosts" -R myknife