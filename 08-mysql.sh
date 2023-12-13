#!/bin/bash

ID = $(id -u)

if [ $ID -eq 0]
then
echo "running as root user"
else
echo "you dont have permissions to install mysql as you are not root user"
fi
yum install mysql
