Vagrant.configure("2") do |config|
    config.hostmanager.enabled = true 
    config.hostmanager.manage_host = true
    config.vbguest.auto_update = false
    config.ssh.insert_key = false
    
    ### Ansible ###
    config.vm.define "airflow" do |airflow|
      airflow.vm.box = "geerlingguy/ubuntu2004"
      airflow.vm.hostname = "airflow"
      airflow.vm.network "private_network", ip: "192.168.60.50", virtualbox__intnet: false
      airflow.vm.synced_folder ".\\vagrant_folder", "/vagrant"
      airflow.vm.provider "virtualbox" do |vb|
        # vb.gui = true
        vb.memory = "2024"
        vb.name = "airflow"
        vb.customize ["modifyvm", :id, "--uart1", "0x3F8", "4"]
        vb.customize ["modifyvm", :id, "--uartmode1", "file", File::NULL]
      end
    end
end
  