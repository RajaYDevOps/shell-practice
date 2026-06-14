#!/bin/bash

#special variables##
echo "All variables passed to script: $@"
echo "Number of variables passed: $#"
echo "First variable: $1"
echo "Script name: $0"
echo "exit code of the previous command: $?"
echo "who is running this: $USER"
echo "which directory: $PWD"
echo "Home directory: $HOME"
echo "PID of the current script: $$"
sleep 5 &
echo "PID of the background command running now: $!"
wait $!
echo "Line Number: $LINENO"
echo "script executed in seconds: $SECONDS"
echo "Random number: $RANDOM"
echo "exit code of the previous command: $?"
