#------------------------------------------------------------------------------
#Author: Yogesh
#Date:02/09/24
#Script no.: 032
#Title: Shell script to generate random numbers 1 to 6 (dice)
#------------------------------------------------------------------------------#

#! usr/bin/bash

#num=$(( $RANDOM%10 + 1)) # this will generate values between 0 to 9
#num=$(( $RANDOM%3 + 1)) # this will generate values between 0 to 2
num=$(( $RANDOM%6 + 1)) # this will generate values between 0 to 5


echo "Number is $num"



