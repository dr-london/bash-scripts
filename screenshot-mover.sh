#/bin/bash

# grab the current date, save it in a variable
currentdate=$(date +"%Y-%m-%d")


# create the new directory named after the date
cd ~/Desktop/Archive
mkdir "Screenshots ${currentdate}"
echo "---> creating folder ${currentdate} in ${pwd}..."

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
  echo "-----> done!"
  exit 0
else
  echo "*** Error: $RETURN"
  exit $RETURN
fi 

