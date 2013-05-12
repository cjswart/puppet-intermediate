# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define :master do |master|
    master.vm.hostname = "puppet"
    master.vm.box      = "centos-64-i386-minimal-pe-master"
    master.vm.box_url  = "https://dl.dropboxusercontent.com/u/23470422/vagrant-pe/centos-64-i386-minimal-pe-master.box"

    master.vm.network :private_network, ip: "192.168.111.111"
    master.vm.network :forwarded_port, guest: 443, host: 8443

    master.vm.synced_folder "manifests", "/etc/puppetlabs/puppet/manifests"
    master.vm.synced_folder "modules",   "/etc/puppetlabs/puppet/modules"
    master.vm.synced_folder "files",     "/etc/puppetlabs/puppet/files"
    master.vm.synced_folder "hieradata", "/etc/puppetlabs/puppet/hieradata"
  end

  config.vm.define :agent do |agent|
    agent.vm.hostname = "agent"
    agent.vm.box      = "centos-64-i386-minimal-pe-agent"
    agent.vm.box_url  = "https://dl.dropboxusercontent.com/u/23470422/vagrant-pe/centos-64-i386-minimal-pe-agent.box"

    agent.vm.network :private_network, ip: "192.168.111.222"

    agent.vm.provision :puppet_server do |agent_puppet|
      agent_puppet.options = "--test --waitforcert"
    end
  end
end
