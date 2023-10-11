#!/bin/bash

sleep 10 & PID=$! #simulate a long process

echo "---> running..."
printf "["
# While process is running...
while kill -0 $PID 2> /dev/null; do 
    printf  "▓"
    sleep 0.33
done
printf "] done!"