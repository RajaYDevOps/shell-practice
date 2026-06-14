#!/bin/bash

NUM1=LINUX
NUM2=10

SUM=$((NUM1+NUM2))

echo "Sum is: $SUM"

#Array
MOVIES=(RRR Varanasi Peddi) #index always start from  0
echo "Movies are: ${MOVIES[@]}"