#!/bin/bash

# Attempting to make a script that will install all the fun things
# that I usually have to manually install. I inevitably miss something
# so I'm going to script it all >:)


# install brew unattended
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install zsh unattended
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --unattended

# install brew packages
brew install gh
brew install --cask 1password

## WIP