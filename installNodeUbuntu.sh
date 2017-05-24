#!/bin/bash
echo "installing Node JS"

sudo apt-get update
sudo apt-get install nodejs
echo "Node JS install complete!!!"

echo "Installing Node Package Manager (NPM)"
sudo apt-get install npm

echo "checking if node binary exists.."
if[ -e /usr/bin/node ]
then
	echo "Node binaries exist"
else
	echo "Create a node symlink using nodejs binaries."
	sudo ln -s /usr/bin/nodejs /usr/bin/node
	echo "To run your angular app, navigate inside the directory, then type the following: \n'sudo npm install && sudo npm start"
fi