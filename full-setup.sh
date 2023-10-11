#!/bin/bash

# Clean mac device setup script
# dr-london@github 11-2-2023

### Coding tools

# install brew unattended
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install zsh unattended
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --unattended

# install brew packages
echo "--> installing iterm2..."
brew install --cask iterm2
echo "installing amethyst..."
brew install --cask amethyst
echo "--> installing 1password cli..."
brew install --cask 1password
echo "--> installing figlet..."
brew install figlet
echo "--> installing exercism..."
brew install exercism
echo "--> installing python3..."
brew install python3
echo "--> installing tldr..."
brew install tldr
echo "--> installing github cli..."
brew install gh
echo "---> installing vs code..."
brew install --cask visual-studio-code

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

##### Applications
