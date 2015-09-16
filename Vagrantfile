Vagrant.configure(2) do |config|
  config.vm.box = "phusion/ubuntu-14.04-amd64"
  config.vm.box_url = "https://vagrantcloud.com/phusion/boxes/ubuntu-14.04-amd64"
  config.vm.network "private_network", ip: "192.168.254.72"
  config.vm.synced_folder ".ssh", "/.tmpssh"

  config.vm.provider :vmware_fusion do |vf, override|
    vf.customize ["modifyvm", :id, "--name", "test-devops" ]
    vf.vmx["memsize"] = 2048
    vf.vmx["numvcpus"] = 1
  end


  config.vm.provision "shell", path: "vagrant.sh"

end