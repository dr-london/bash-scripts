#!/bin/bash

# Clean mac device setup script
# dr-london@github 11-2-2023

### Coding tools

# install brew unattended
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install zsh unattended
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --unattended

# install brew packages 
# AKA THE BREWHOUSE
# AKA SLAMMIN BREWSKIS

echo -e "\n--> installing iterm2...\n"
brew install --cask iterm2
echo -e "\n-->installing amethyst...\n"
brew install --cask amethyst
echo -e "\n--> installing 1password cli...\n"
brew install --cask 1password
echo -e "\n--> installing figlet...\n"
brew install figlet
echo -e "\n--> installing exercism...\n"
brew install exercism
echo -e "\n--> installing python3...\n"
brew install python3
echo -e "\n--> installing tldr...\n"
brew install tldr
echo -e "\n--> installing github cli...\n"
brew install gh
echo -e "\n---> installing vs code...\n"
brew install --cask visual-studio-code
echo -e "\n---> installing tree...\n"
brew install tree

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
