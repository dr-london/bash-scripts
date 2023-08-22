#!/bin/bash

# go to the dekstop and delete the stuff
cd ~/Desktop
rm *.jpg 2>/dev/null && t=0 || t=1
rm *.png 2>/dev/null && t=0 || t=1

# print out the status
RETURN=$?

if [ $RETURN -eq 0 ];
then
  echo "The script was executed successfuly"
  exit 0
else
  echo "The script was NOT executed successfuly and returned the code $RETURN"
  exit $RETURN
fi 