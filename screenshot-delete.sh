#!/bin/bash

# go to the dekstop and delete the stuff
cd ~/Desktop
rm *.png
rm *.jpg

# print out the status
status=$?
 
if test $status -eq 0
then
	echo "Files deleted!"
else
	echo "Failed!"
fi