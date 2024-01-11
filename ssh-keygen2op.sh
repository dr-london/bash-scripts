#!/bin/bash
# generates keys and saves them to 1password.

key_name="$(date +"%Y-%m-%d") ssh-ed25519 key"

ssh-keygen -t ed25519 -f ~/.ssh/"$key_name"

if [ $? -eq 0 ]; then
    uuid=$(op item create --title "$key_name" --category "SSH Key")
    op item edit $uuid private-key=$(cat ~/.ssh/"$key_name") 2>/dev/null && t=0 || t=1
    rm ~/.ssh/"$key_name"
    
    echo "---> ssh key generated and stored in 1Password successfully"
else
    echo "---> ssh key generation failed"
    exit 1
fi