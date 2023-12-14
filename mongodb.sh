#!/bin/bash

    R="\e[31m"
    G="\e[32m"
    Y="\e[33m"
    N="\e[0m"

ID=$(id -u)
if [ $ID -ne 0 ]
  then
      echo "you are not a root user to install"
      exit 1
  else
    echo "you are root user"
fi

VALIDATE()
{

if [ $? -ne 0 ]
   then
        echo -e "$1.... $R got failed $N"
        exit 1
    else
         echo -e "$2.... $G got succesful $N"
fi

}

yum install mysql -y &>> 

VALIDATE $?  "Installation of MYSQL" &>>$LOGFILE

yum install httpd -y
 
VALIDATE $?  "Installation of HTTPD" &>>$LOGFILE


   


    







