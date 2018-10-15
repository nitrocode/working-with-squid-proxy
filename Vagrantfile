# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # 14.04 - insecure squid 3.3
  config.vm.define :trusty do |config|
    config.vm.box = "ubuntu/trusty64"
    config.vm.provision :shell, :privileged => true, :path => "bootstrap_trusty.sh"
  end

  # 16.04 - safe squid 3.5
  config.vm.define :xenial do |config|
    config.vm.box = "ubuntu/xenial64"
    config.vm.provision :shell, :privileged => true, :path => "bootstrap_xenial.sh"
  end

  config.vm.network "forwarded_port", guest: 3128, host: 3128, auto_correct: true
end
