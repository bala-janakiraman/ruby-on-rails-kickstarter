#!/usr/bin/env bash
echo "-------------------> Creating a gemset for ruby 2.2.0"
rvm use ruby-2.2.0@rails4.2 --create

#Instant most recent stable release:
echo "-------------------> Installing Rails ..."
gem install rails
rails -v
echo "-------------------> Rails installation complete"
