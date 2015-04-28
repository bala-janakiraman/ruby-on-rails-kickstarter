#!/usr/bin/env bash

#Intended for Ubuntu 64.(14.04) trusty

#Update Ubuntu
echo "-------------------> Updating Ubuntu ..."
sudo apt-get update
echo "-------------------> Ubuntu update completed."

echo "-------------------> Update/install git-core..."
sudo apt-get install -y git-core
echo "-------------------> git-core setup completed"

echo "-------------------> Installing Apache ..."
sudo apt-get install -y apache2
echo "-------------------> Apache Installation complete"

# reference for this installation steps --> http://railsapps.github.io/installrubyonrails-ubuntu.html
#Intall RVM
echo "-------------------> Installing RVM ..."
# instruction from https://rvm.io/
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
#curl -sSL https://get.rvm.io | bash -s stable
# curl -L https://get.rvm.io | bash -s stable --ruby
\curl -sSL https://get.rvm.io | bash -s stable

#start using RVM you need to run
# if [ -s /home/vagrant/.rvm/scripts/rvm ]; then
# 	echo "--- running source /home/vagrant/.rvm/scripts/rvm..."
# 	# source /home/vagrant/.rvm/scripts/rvm
# fi

#adding vagrant user to rvm group.
sudo usermod -a -G rvm vagrant

#To start using RVM you need to run, in all your open shell windows. Instruction 
source /etc/profile.d/rvm.sh

echo "-------------------> RVM installation completed"

#Install nodejs
# Add a new repository for apt-get to search 
echo "-------------------> Adding NodeJS repository..."
sudo add-apt-repository ppa:chris-lea/node.js -y # from Startup engineering.
echo "-------------------> Update repository..."
sudo apt-get update
echo "-------------------> Install NodeJS..."
sudo apt-get install -y nodejs
echo "-------------------> NodeJS installation complete"


# exit #testing the installation. 

#Install Ruby
echo "-------------------> Installing Ruby..."
rvm install ruby-2.2.1
echo "-------------------> set ruby-2.2.0 as default"
rvm --default use ruby-2.2.1
echo "------------------->  Ruby installation complete"

#disable document installation for all gem installs.
echo "-------------------> disabling gem document installs"
echo "gem: --no-document" >> ~/.gemrc

#Update all stale gems
#gem update --system
echo "-------------------> Updating stale gems ..."
gem update

#Nokogiri gem. Nokori is a dependency for a lot of gems.
echo "-------------------> Installing Nokogiri gem ..."
gem install nokogiri

#rvm gemset use global

