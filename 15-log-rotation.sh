#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

SOURCE_DIR="/tmp/shellscripts-logs"

if [ ! -d $SOURCE_DIR ]
   then
      echo -e "$R Souce directory does not exist"
fi

FILES_TO_DELETE=$(find /tmp/shellscripts-logs -type f -mtime +14 -name "*.log")

while IFS= read -r line
    do
       echo "deleting files $line"
       rm -rf $line
    done <<< $FILES_TO_DELETE
