#!/bin/bash

    R="\e[31m"
    G="\e[32m"
    Y="\e[33m"
    N="\e[0m"

#to get script name with time as a log file
TIMESTAMP=$(date +%F-%H-%M-%s)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "Script is started executing at $TIMESTAMP" &>>$LOGFILE

ID=$(id -u)
if [ $ID -ne 0 ]
  then
      echo -e "$R ERROR: Please run as root user $N"
      exit 1
  else
    echo -e "$G you are root user $N"
fi

VALIDATE(){

   if($1 -ne 0)
    then
    echo -e "$2 $R ... FAILED $N"
    else
    echo -e "$2 $G ... SUCCESSFUL $N"
  fi
}

for package in $@
   do
      yum list installed $package &>>$LOGFILE
       
       if [ $? -ne 0 ]
         then
            yum install $package -y &>>$LOGFILE
            VALIDATE $? "Installation of $package"
        else
            echo "$package is already installed... $Y SKIPPINNG"
        fi
   done