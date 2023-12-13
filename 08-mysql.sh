#!/bin/bash
ID=$(id -u)
if [ $ID -ne 0]
then
echo "you dont have permissions to install mysql as you are not root user"
else
echo "running as root user"
fi
