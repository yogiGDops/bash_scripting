#! /usr/bin/bash
#------------------------------------------------------------------------------#
#Author: Yogesh
#Date: 31/0/24
#Script no: 014
#Title: Infinite loop (IL)
#Definition:IL is a loop that runs indefinitely, usually because its condition 
#is always true or because no condition is specified to break out of it.
#use case in scenarios where you need a continuous operation, such as monitoring
#a file, running a server, or repeatedly checking a condition.
#------------------------------------------------------------------------------#

#1. using while loop
while true;
do
    echo "This is an infinite loop."
    sleep 1  # Add sleep to prevent high CPU usage
done

#------------------------------------------------------------------------------#

#2. Using for Loop with No Condition

for (( ; ; )); 
do
    echo "This is another infinite loop."
    sleep 1  # Add sleep to prevent high CPU usage
done




















