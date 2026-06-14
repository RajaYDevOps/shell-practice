!#/bin/bash

# PERSON1=China
# PERSON2=Taiwan

# echo "$PERSON1: Hey $PERSON2 ,we are going to blast you!"
# echo "$PERSON2: Yes,please.You are welcome"
# echo "$PERSON1: Hey $PERSON2, i am serious"
# echo "$PERSON2: Hey $PERSON1, we are also serious"

#to check all variables,count of variables passed

PERSON1=$1
PERSON2=$2

echo "$1: Hey $2 ,we are going to blast you!"
echo "$2: Yes,please.You are welcome"
echo "$1: Hey $2, i am serious"
echo "$2: Hey $1, we are also serious"

echo "All variables passed to this script: $@"
echo "Number of variables passed: $#"
echo "First variable: $1"