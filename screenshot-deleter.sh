#!/bin/bash

# go to the dekstop and delete the stuff
echo "---> moving to desktop..."
cd ~/Desktop

echo "---> deleting files..."
rm *.jpg 2>/dev/null && t=0 || t=1
rm *.png 2>/dev/null && t=0 || t=1

# print out the status
RETURN=$?

if [ $RETURN -eq 0 ];
then
  echo "---> done!"
  exit 0
else
  echo "*** Error: $RETURN"
  exit $RETURN
fi 