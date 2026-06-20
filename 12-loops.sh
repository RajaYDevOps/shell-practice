#!/bin/bash
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

for package in $@
do
  #echo "Installing $package"
  dnf list installed $package &>> $LOGS_FILE
   if [ $? -eq 0 ]; then
    echo "MySQL already installed.....Skipping"
   else
   #echo "Installing $package"
   dnf install $package -y &>> $LOGS_FILE
   VALIDATE $package $?
   fi
done

