#!/bin/bash

USER_ID=$(id -u)
LOGS_DIR=/var/log/shell-script
LOGS_FILE="$LOGS_DIR/$0.log" # /root/shell-logs/10-logs.sh.log
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

trap 'echo "error at $LINENO",command: $BASH_COMMAND"' ERR

#check root access or not
if [ $USER_ID -ne 0 ]; then
  echo "please run the script with root access"
  exit 1
fi


for package in $@
do
  #echo "Installing $package"
  dnf list installed $package &>> $LOGS_FILE
   if [ $? -eq 0 ]; then
    echo -e "$TIMESTAMP[INFO] $package already installed.....$Y Skipping $N " | tee -a $LOGS_FILE
   else
   echo "$TIMESTAMP[INFO] Installing $package" | tee -a $LOGS_FILE
   dnf install $package -y &>> $LOGS_FILE
   fi
done
