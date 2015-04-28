# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.provision "shell", :path => "vm_provision/Ruby-gems.sh" 
  # config.vm.provision "shell", :path => "vm_provision/rails.sh" 
  config.vm.network "forwarded_port", guest: 3000, host: 8081
  # config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.synced_folder "devenv/", "/home/vagrant/"

  
  config.vm.provider "virtualbox" do |vb|
    #Cap vm's host resource utilization
    vb.customize ["modifyvm", :id, "--cpuexecutioncap", "50", "--cpus", "1"]
    # Customize the amount of memory on the VM:
    vb.memory = "1024"
  end
end
