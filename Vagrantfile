Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.network "public_network"
  config.vm.network "forwarded_port", guest: 27017, host: 27018
  # config.vm.network "private_network", ip: "192.168.50.4"
  config.vm.provision "file", source: "./custom_mongod.conf", destination: "~/custom_mongod.conf"
  config.vm.provision :shell, path: "bootstrap.sh"
end

