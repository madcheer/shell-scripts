#!/bin/bash

    R="\e[31m"
    G="\e[32m"
    Y="\e[33m"
    N="\e[0m"

ID=$(id -u)
if [ $ID -ne 0 ]
  then
      echo "$R ERROR: Please run as root user $N"
      exit 1
  else
    echo "$G you are root user $N"
fi

echo "All Arguments Passed:$@"