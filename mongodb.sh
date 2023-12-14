#!/bin/bash

VALIDATE()
{

if [ $? -ne 0 ]
   then
        echo "$1.... got failed"
        exit 1
    else
         echo "$2.... got succesful"
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

VALIDATE $?  $installtion MYSQL

yum install httpd -y
 
VALIDATE $? $installtion  HTTPD


   


    







