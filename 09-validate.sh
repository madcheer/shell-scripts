#!/bin/bash

ID=$(id -u)

if[ $ID -ne 0 ]
   then
      echo " you are not a root user to install the software"
      exit 1
else
       echo " you are a root user to install the software"
fi

yum install mysql -y

if [ $? ne 0 ]
   then
         echo "installation of sql is  failed"
         exit 1
   else
          echo "installation of sql is successful"
   fi 
    




