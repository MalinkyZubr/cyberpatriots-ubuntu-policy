#! /bin/bash

# in the command line declare -p shows all system variables. allows you to declare environment variables
declare -r pwdfile=/etc/pwdfile # the -r declares the variable as readonly. it cannot be changed as a result

echo $pwdfile