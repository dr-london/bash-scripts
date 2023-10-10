#/bin/bash

# grab the current date, save it in a variable
currentdate=$(date +"%Y-%m-%d")

# create the new directory named after the date
cd ~/Desktop/Archive
mkdir "Screenshots $currentdate" 2>/dev/null

# check if there's already a dir there
if [ $? -eq 0 ]
then
  echo "---> creating folder $currentdate in $PWD..."
else
  echo "---> dir already created, moving on..."
fi


# move all the junk off the desktop and into the new folder
echo "----> moving files..."
cd ~/Desktop
mv *.png ~/Desktop/Archive/"Screenshots $currentdate" 2>/dev/null
mv *.jpg ~/Desktop/Archive/"Screenshots $currentdate" 2>/dev/null

# print out the status
RETURN=$?

if [ $RETURN -eq 0 ];
then
  echo "-----> done!"
  exit 0
else
  echo "*** Error: $RETURN"
  exit $RETURN
fi
