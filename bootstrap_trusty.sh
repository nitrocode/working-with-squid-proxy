#!/bin/sh

# install squid
sudo apt-get update -y
sudo apt-get install squid -y

# Overwrite config
cp /vagrant/squid_default_allow.conf /etc/squid3/squid.conf

# Restart server
sudo service squid3 restart
