#!/bin/bash -xe

echo "Setting up NodeJS Environment"
curl https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

. /home/ec2-user/.nvm/nvm.sh
. /home/ec2-user/.bashrc

nvm alias default v12.7.0
nvm install v12.7.0
nvm use v12.7.0

mkdir -p /home/ec2-user/app/logs
cd app
npm install
npm start