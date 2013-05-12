# puppet-intermediate

## Prerequisites
Have the following software installed:
* VirtualBox 4.2.x - https://www.virtualbox.org/wiki/Downloads
* Vagrant 1.1.x or higher - http://downloads.vagrantup.com

## Initialization
Clone puppet-intermediate git repository:

    git clone https://github.com/xebia/puppet-intermediate.git

Start the images:

    vagrant up

Two images will be downloaded and started:
* Puppet Master: https://dl.dropboxusercontent.com/u/23470422/vagrant-pe/centos-64-i386-minimal-pe-master.box
* Puppet Agent: https://dl.dropboxusercontent.com/u/23470422/vagrant-pe/centos-64-i386-minimal-pe-agent.box

The following output will be shown when puppet runs successfully on the agent:

    notice: Hello from Puppet Master
    notice: /Stage[main]//Node[default]/Notify[Hello from Puppet Master]/message: defined 'message' as 'Hello from Puppet Master'
    info: Creating state file /var/opt/lib/pe-puppet/state/state.yaml
    notice: Finished catalog run in 0.04 seconds

Run puppet (again):

    vagrant provision

### Puppet Master specifications:
* Puppet Enterprise 2.8.1
* Put manifests in local `manifests/` folder
* Put modules in local `modules/` folder
* Put files in local `files/` folder
* Put Hiera data in local `hieradata` folder
* Dashboard: https://192.168.111.111/ (username: puppet@example.com / password: puppet@example.com)
* PuppetDB: http://192.168.111.111:8080/
