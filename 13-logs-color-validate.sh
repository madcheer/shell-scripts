#!/bin/bash

# redirecting to logfile
# $? will give exit status of previous command 
# $0 will give script name 

VALIDATE()
{

if [ $1 -ne 0 ]
   then
         echo -e "$2..... is  $R FAILED"
         exit 1
   else
          echo -e "$2..... is $G SUCCESSFUL"
   fi 

}

ID=$(id -u)

#to get script name with time as a log file

TIMESTAMP=$(date +%F-%H-%M-%s)

R="\e[31m"
G="\e[32m"
N="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"

if [ $ID -ne 0 ]
   then
      echo " you are not a root user to install the software"
      exit 1
else
       echo " you are a root user to install the software"
fi

yum install mysql -y &>>$LOGFILE

VALIDATE $? $installing MYSQL
    
yum install git -y &>>$LOGFILE

VALIDATE $? $installing GIT

