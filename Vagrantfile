# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu/xenial64"
  config.vm.box_check_update = false

  config.vm.define "web", primary: true do |minion_config|

    minion_config.vm.host_name = 'hello-go'
    minion_config.vm.network :private_network, ip: "10.11.12.14"

    minion_config.vm.synced_folder ".", "/vagrant", type: "nfs",
      mount_options: ['rw', 'vers=3', 'tcp', 'fsc' ,'actimeo=1']

    # web
    minion_config.vm.network "forwarded_port", guest: 80, host: 7776   # http
    minion_config.vm.network "forwarded_port", guest: 443, host: 7777  # https

    config.vm.provision "shell", path: "bootstrap.sh", privileged: true, binary: false
  end

  config.vm.provider "virtualbox" do |v|
    v.memory = 2000 # a little less than production's 2GB
    v.customize [ "modifyvm", :id, "--uartmode1", "disconnected" ] # no ubuntu logs in root dir
  end

end
