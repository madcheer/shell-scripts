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
      exit 1
   else
    echo "mysql installtion got successful"
fi

yum install httpd -y
 
if [ $? ne 0 ]
   then
        echo "httpd installation got failed"
        exit 1
    else
         echo "httpd installtuon got succesful"
fi


   


    







