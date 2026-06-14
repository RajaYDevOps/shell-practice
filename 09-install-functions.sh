#!/bin/bash

USER_ID=$(id -u)

#check root access or not
if [ $USER_ID -ne 0 ]; then
  echo "please run the script with root access"
  exit 1
fi

#echo "I am continuing...."

echo "Installing mySQL"
dnf install mysqlaadsg -y
#if[ $? -ne 0 ]; then

echo "I am continuing...."
echo "I am still continuing"
