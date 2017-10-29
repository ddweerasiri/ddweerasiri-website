#!/bin/sh

echo "Running after-install.sh..."

sudo yum install -y gcc-c++ make
curl -sL https://rpm.nodesource.com/setup_8.x | sudo -E bash -

sudo yum install -y nodejs

echo "Installed node version:"
node -v

echo "Installed npm version:"
npm -v

if [ $? -eq 0 ]
then
  echo "Finished running after-install.sh..."
  exit 0
else
  echo "Failed running after-install.sh..." >&2
  exit 1
fi