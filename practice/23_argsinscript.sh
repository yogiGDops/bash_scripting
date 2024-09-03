#------------------------------------------------------------------------------#
#Author: Yogesh
#Date:31/08/24
#Script no.: 023
#Title: To pass arguments in the running script
#------------------------------------------------------------------------------#
#! /usr/bin/bash
#to access the arguments

echo "pass the arguments"

echo "first argument is: $1"
echo "second argument is: $2"

#pass arguments with file name like ./23_scrip_name.sh Bash "scripting is my love"

#  to see what arguments we have use $@
echo "all arguments we have in this file are: $@"
#  to get count of arguments use $#
echo "count of  arguments we have in this file are: $#"


