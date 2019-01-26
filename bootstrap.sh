# UPDATE SYSTEM
sudo apt-get update
sudo apt-get install curl git -y

# INSTALL NODEJS
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential

#INSTALL MONGODB
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org

# MONGODB DEPENDENCIES
sudo mkdir -p /data/db
sudo chmod 0777 /data/db

# MONGODB RUN AS SERVICE
sudo mv /home/vagrant/custom_mongod.conf /etc/mongod.conf
sudo service mongod start

