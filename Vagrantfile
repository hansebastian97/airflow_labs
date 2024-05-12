Vagrant.configure("2") do |config|
    config.hostmanager.enabled = true 
    config.hostmanager.manage_host = true
    config.vbguest.auto_update = false
    config.ssh.insert_key = false
    
    ### Ansible ###
  config.vm.define "controlnode" do |controlnode|
    controlnode.vm.box = "geerlingguy/ubuntu2004"
    controlnode.vm.hostname = "controlnode"
    controlnode.vm.network "private_network", ip: "192.168.60.50", virtualbox__intnet: false
    controlnode.vm.synced_folder ".\\vagrant_folder", "/vagrant"
    controlnode.vm.provider "virtualbox" do |vb|
      # vb.gui = true
      vb.memory = "6000"
      vb.name = "controlnode"
      vb.cpus = "4"
      vb.customize ["modifyvm", :id, "--uart1", "0x3F8", "4"]
      vb.customize ["modifyvm", :id, "--uartmode1", "file", File::NULL]
    end
  end
end  
  