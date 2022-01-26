#!/bin/bash

clear
echo "Enter your file name >>"
read x
curl -F "file=@${x}" https://api.anonfiles.com/upload | python -mjson.tool > output.json || exit 
echo "Successfully wrote the result to output.json"
read -n 1 -r -s -p "Press any key to exit..."
exit 

