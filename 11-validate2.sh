#!/bin/bash

#passing arguments to VALIDATE FUNCTION TO KNOW WHAT IS INSTALLED?
# passed argument $1 and $2

VALIDATE()
{

if [ $1 -ne 0 ]
   then
         echo "$2..... is  FAILED"
         exit 1
   else
          echo "$2..... is SUCCESSFUL"
   fi 

}

ID=$(id -u)

if [ $ID -ne 0 ]
   then
      echo " you are not a root user to install the software"
      exit 1
else
       echo " you are a root user to install the software"
fi

yum install mysql -y

VALIDATE $? $installing MYSQL
    
yum install git -y

VALIDATE $? $installing GIT

