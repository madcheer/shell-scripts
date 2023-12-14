#!/bin/bash


ID=$(id -u)
if [ $ID -ne 0 ]
  then
      echo "you are not a root user to install"
      exit 1
  else
    echo "you are root user"
fi

yum install mysql -y

if [ $? -ne 0 ]
   then
      echo "mysql installation got failed".
   else
    echo "mysql installtion got success"
fi

    






