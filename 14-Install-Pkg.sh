#!/bin/bash

    R="\e[31m"
    G="\e[32m"
    Y="\e[33m"
    N="\e[0m"

ID=$(id -u)
if [ $ID -ne 0 ]
  then
      echo -e "$R ERROR: Please run as root user $N"
      exit 1
  else
    echo -e "$G you are root user $N"
fi

echo "All Arguments Passed:$@"