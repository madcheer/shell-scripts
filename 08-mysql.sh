#!/bin/bash
ID=$(id -u)
if [ $ID -ne 0 ]
then
echo "you dont have permissions to install mysql as you are not root user"
exit 1
else
echo "running as root user"
fi
yum install mysql -y

if [ $? -ne 0 ]
then 
  echo "ERROR: mysql is not installed"
exit 1
else
   echo "mysql installation is successful"
fi
