#!/bin/bash

list_domains='aaf.edu.au'

for domain in $list_domains
do
    echo "$domain"
     curl -s "https://mxtoolbox.com/emailhealth/$domain/" | grep 'text-error'
done