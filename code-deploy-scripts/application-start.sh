#!/bin/sh

echo "Running application-start.sh..."
cd /home/ec2-user/ddweerasiri-website

#installing all the app-dependencies which are mentioned in package.json
sudo rm -rf node_modules
sudo npm install
sudo npm run build
sudo nohup npm run start &

if [ $? -eq 0 ]
then
  echo "Finished running application-start.sh..."
  exit 0
else
  echo "Failed running application-start.sh..." >&2
  exit 1
fi
