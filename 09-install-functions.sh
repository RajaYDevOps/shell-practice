#!/bin/bash

USER_ID=$(id -u)

#check root access or not
if[USER_ID -ne 0]; then
  echo "please run the script with root access"
  exit 1
fi

echo "I am continuing...."