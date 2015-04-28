Ruby on Rails kickstarter VM
==============

Setting up a VM for Ruby on Rails learning/development.(also Ruby if you want to ..)

## Prerequisites  

* Latest version of vagrant.  
  http://www.vagrantup.com/downloads.html
  
* Virtual Box.  
  https://www.virtualbox.org/wiki/Downloads  

### Vagrant Boxes  
There are many base boxes available that you can download and build you image off of.    
http://www.vagrantbox.es/  
https://vagrantcloud.com/ubuntu/boxes/trusty64  

#### Download a base box  
`vagrant box add "ubuntu/trusty64" "https://vagrantcloud.com/ubuntu/boxes/trusty64"`  

### Spining up the VM  

Clone this repo  
```
git clone https://github.com/bala-janakiraman/ruby-on-rails-kickstarter.git  
vagrant up
```  

### Accessing the VM
```  
vagrant ssh  
```  

That command should take your to command line on the vm(vagrant box) using SSH key, but if you are prompted for a password use `vagrant`  

You are now ready to code (ruby on rails or just rails). Cheers!!  


