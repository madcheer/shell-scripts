#!/bin/bash

# redirecting to logfile
# $? will give exit status of previous command 
# $0 will give script name 

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

#to get script name with time as a log file

TIMESTAMP=$(date +%F-%H-%M-%s)

echo "/tmp/$0-$TIMESTAMP.log"

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

