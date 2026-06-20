#!/bin/bash

USER_ID=$(id -u)
LOGS_DIR=/var/log/shell-script
LOGS_FILE="$LOGS_DIR/$0.log" # /root/shell-logs/10-logs.sh.log
#check root access or not
if [ $USER_ID -ne 0 ]; then
  echo "please run the script with root access"
  exit 1
fi

# first arg -->what are you trying to install
# second arg-->exit code
VALIDATE(){
  if [ $2 -ne 0 ]; then
   echo "installing $1 is....FAILED"
   exit 1
  else
   echo "installing $1 is....SUCCESS"
fi
}
#echo "I am continuing...."
dnf list installed mysql &>> $LOGS_FILE
if [ $? -eq 0 ]; then
  echo "MySQL already installed.....Skipping" | tee -a $LOGS_FILE
else 
  echo "Installing mySQL" | tee -a $LOGS_FILE
  dnf install mysql -y &>> $LOGS_FILE
  VALIDATE MySQL $?
fi
dnf list installed nginx &>> $LOGS_FILE
if [ $? -eq 0 ]; then
  echo "nginx already installed.....Skipping" | tee -a $LOGS_FILE
else 
  echo "Installing nginx" | tee -a $LOGS_FILE
  dnf install nginx -y &>> $LOGS_FILE
  VALIDATE nginx $?
fi


# echo "I am continuing...."
# echo "I am still continuing"
