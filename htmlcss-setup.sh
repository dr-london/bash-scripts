#!/bin/bash

# create a script to create the basic folder structure for a new webpage project.
# contains only the most basic structure, will be appended as needed.

# create folders
cd ~/Desktop/Code
mkdir new-project
cd New-Project
mkdir resources
cd resources
mkdir css

# create files
cd ~/Desktop/Code/new-project
touch index.html
cd ~/Desktop/Code/new-project/resources/css
touch index.css


# structure should look like:
#
#   new-project
#   ├── index.html
#   └── resources
#       └── css
#           └── index.css