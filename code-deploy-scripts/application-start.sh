#!/bin/sh

echo "Running application-start.sh..."
cd /home/ec2-user/ddweerasiri-website
npm run start

if [ $? -eq 0 ]
then
  echo "Finished running application-start.sh..."
  exit 0
else
  echo "Failed running application-start.sh..." >&2
  exit 1
fi
