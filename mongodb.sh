#!/bin/bash

VALIDATE()
{

if [ $? -ne 0 ]
   then
        echo -e "$1.... \e[31m got failed \e[0m"
        exit 1
    else
         echo -e "$2.... \e[32m got succesful \e[0m"
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

VALIDATE $?  "Installation of MYSQL"

yum install httpd -y
 
VALIDATE $? $HTTPD

VALIDATE $?  "Installation of HTTPD"


   


    







