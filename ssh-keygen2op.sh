#!/bin/bash

# check if 1Password CLI tool is installed
# if ! command -v op &> /dev/null; then
#    echo "1Password CLI tool is not installed. Please install it first."
#    exit 1
# fi

# specify the name for the key
key_name="$(date +"%Y-%m-%d") ed255 key"

# specify the vault
# vault_name="Personal"

# generate the SSH key pair
ssh-keygen -t ed25519 -f ~/.ssh/"$key_name"

# check if key generation was successful
if [ $? -eq 0 ]; then
    # create an item in 1Password
    uuid=$(op item create --title "$key_name" --category "SSH Key")

    # attach the private key file as a document to the item
    op item edit $uuid 'private-key='$(cat ~/.ssh/"$key_name") 2>/dev/null && t=0 || t=1

    # securely delete the private key
    rm ~/.ssh/"$key_name"
    
    echo "SSH key generation and storage in 1Password completed successfully."
else
    echo "SSH key generation failed."
    exit 1
fi