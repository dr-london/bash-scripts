#/bin/bash

# grab the current date, save it in a variable
currentdate= date +"%Y-%m-%d %T"

# move to the archive folder
cd ~/Desktop/Archive

# create the new directory named after the date
mkdir "${currentdate} Screenshots"
echo "---> creating folder ${currentdate} in $pwd..."

# move all the junk off the desktop and into the new folder
cd ~/Desktop
mv *.png Archive/{currentdate} 2>/dev/null && t=0 || t=1
mv *.jpg Archive/{currentdate} 2>/dev/null && t=0 || t=1
mv *.jpeg Archive/{currentdate} 2>/dev/null && t=0 || t=1
echo "----> moving files..."

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

