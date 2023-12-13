#!/bin/bash

VALIDATE()
{

if [ $? -ne 0 ]
   then
         echo "installation is  failed"
         exit 1
   else
          echo "installation is successful"
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

VALIDATE
    
yum install git -y

VALIDATE