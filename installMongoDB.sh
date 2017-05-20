#!/bin/bash
echo "installing Mongo DB"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6

echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list

sudo apt-get update

sudo apt-get install -y mongodb-org

echo "Installation complete!  Installed MongoDB v 3.4"

echo "Now starting mongodb service"
sudo service mongod start

printf "Verify that the mongod prcess has started successfully by checking the log file at: /var/log/mongodb/mongod.log.  It should be waiting for connections on port 27017 by default.  If youue changed the default port, port number will be different. Be sure to add your local IP to the mongod.conf bindIp to access MongoDB aside from localhost"

printf "To start MongoDB use:\nsudo service mongod restart"

printf "To stop MongoDB use:\nsudo service mongod stop"
