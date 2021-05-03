Vagrant.configure("2") do |config|
  config.vm.define "grafana" do |subconfig|
    subconfig.vm.box = "hashicorp/bionic64"
    subconfig.vm.hostname = "grafana"
    subconfig.vm.network :private_network, ip: "10.1.1.10"
    subconfig.vm.network "forwarded_port", guest: 3000, host: 3000
    subconfig.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = 2
      vb.name = "grafana"
    end
    subconfig.vm.provision :shell, path: "bootstrap-grafana.sh"
  end

  config.vm.define "client1" do |subconfig|
    subconfig.vm.box = "hashicorp/bionic64"
    subconfig.vm.hostname = "client1"
    subconfig.vm.network :private_network, ip: "10.1.1.11"
    subconfig.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = 1
      vb.name = "client1"
    end
    subconfig.vm.provision :shell, path: "bootstrap-telegraf.sh"
  end

  config.vm.define "client2" do |subconfig|
    subconfig.vm.box = "hashicorp/bionic64"
    subconfig.vm.hostname = "client2"
    subconfig.vm.network :private_network, ip: "10.1.1.12"
    subconfig.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = 1
      vb.name = "client2"
    end
    subconfig.vm.provision :shell, path: "bootstrap-telegraf.sh"
  end
end
