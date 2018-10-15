#!/bin/sh

# install squid
sudo apt-get update -y
sudo apt-get install squid3 -y

# Overwrite config
cp /vagrant/squid_default_allow.conf /etc/squid/squid.conf

# Restart server
sudo service squid restart
