#!/bin/bash

# Clean mac device setup script
# dr-london@github 11-2-2023


# install brew unattended
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install zsh unattended
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --unattended

# install brew packages
brew install --cask iterm2
brew install --cask amethyst
brew install --cask 1password
brew install figlet
brew install exercism
brew install python3
brew install tldr
brew install gh

## WIP
# create folder for code
cd ~/Desktop
mkdir Code && git init 2>/dev/null

# make Archive folder (used for the `screenshot-mover` script)
mkdir Archive

# install some fonts
# clone
cd ~/Desktop/Code
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

