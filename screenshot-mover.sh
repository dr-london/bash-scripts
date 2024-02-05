#!/bin/bash

# grab the current date, save it in a variable
currentdate=$(date +"%Y-%m-%d")

# create the new directory named after the date
cd ~/Desktop/Archive
mkdir "Screenshots $currentdate" 2>/dev/null

# check if there's already a dir there
if [ $? -eq 0 ]
then
  echo "---> creating folder Screenshots $currentdate in $PWD..."
else
  echo "---> dir already created, moving on..."
fi

# move all the junk off the desktop and into the new folder
echo "----> moving files..."
cd ~/Desktop
mv *.png Archive/Screenshots\ $currentdate 2>/dev/null
mv *.jpg Archive/Screenshots\ $currentdate 2>/dev/null
mv *.jpeg Archive/Screenshots\ $currentdate 2>/dev/null


# Removed status as each file type is its own command. If one fails, then it will report exit 1 even if the others work.
echo "-----> done!"
