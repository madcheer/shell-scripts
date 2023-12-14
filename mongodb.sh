#!/bin/bash

VALIDATE()
{

if [ $? -ne 0 ]
   then
        echo "installation got failed"
        exit 1
    else
         echo "installtion got succesful"
fi

}

ID=$(id -u)
if [ $ID -ne 0 ]
  then
      echo "you are not a root user to install"
      exit 1
  else
    echo "you are root user"
fi

yum install mysql -y

VALIDATE

yum install httpd -y
 
VALIDATE


   


    







