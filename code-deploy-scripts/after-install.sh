#!/bin/sh

echo "Running after-install.sh..."

sudo yum install -y gcc-c++ make
curl -sL https://rpm.nodesource.com/setup_6.x | sudo -E bash -

sudo yum install -y nodejs

echo "Installed node version:"
node -v

echo "Installed npm version:"
npm -v

#installing all the app-dependencies which are mentioned in package.json
cd /home/ec2-user/ddweerasiri-website
sudo npm install

if [ $? -eq 0 ]
then
  echo "Finished running after-install.sh..."
  exit 0
else
  echo "Failed running after-install.sh..." >&2
  exit 1
fi