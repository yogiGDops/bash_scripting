#! /usr/bin/bash

#---------------------------------------------------------------#
#Author: Yogesh
#Date: 27/08/24
#Script no: 006
#Title: Understand the usage of if-else and elif conditional 
#statements in shell scripting
#---------------------------------------------------------------#

#---------------------------------------------------------------#
#|condition	|    symbol	|Condition	|    symbol	|
#---------------------------------------------------------------#
#|equal to	|    -eq/==	|greater than	|    -gt	|
#---------------------------------------------------------------#
#|not equal to	|    -ne/!=	|less than	|    -lt	|
#---------------------------------------------------------------#
#|     greaterthanorequlto	| -ge				|		
#---------------------------------------------------------------#
#|     lessthanorequalto	| -le				|
#---------------------------------------------------------------#

#---------------------------------------------------------------#
#*************************if-else loop***************************
#---------------------------------------------------------------#

# read the age (read and store it in some user defined variable)
read -p "Enter your age:" input_age

if [[ input_age -ge 16 ]] 
#very impt to provide space between [ and input, otherwise gives error
#2[[ brackets are most efficient way of handeling the loops...

then
	echo "You are eligble for driving licence"
else
	echo "You are not eligible for driving licence"
fi

#---------------------------------------------------------------#
#**************************elif loop*****************************
#---------------------------------------------------------------#

# read input from user
read -p "Enter the CPU usage %:" cpu_percentage

# observer how read variable is passed in above and present script.
if [[ ${cpu_percentage} -ge 95 ]]; then
	echo -e "\nCPU usage is critical, situation need immediate attention"

elif [[ ${cpu_percentage} -ge 80 && ${cpu_percentage} -lt 95 ]]; then
	echo -e "\nCPU usage is High, situation: on altert"

elif [[ ${cpu_percentage} -ge 55 && ${cpu_percentage} -lt 80 ]]; then
	echo -e "\nCPU usage is moderate, situation is normal"

else [[ ${cpu_percentage} -lt 55 ]]
	echo -e "\nCPU usage is normal, situation need no action"
fi


#-------------------------------------------------------------#
#Note: The above script is only valid for interger and does not accpet float values...
# every elif is closed [] is closed with ; and followed by then
# both conditions are passed inside the double []
# observe the space maintained between the [[ and input variable...
# read -p (print) echo "message" input_variable (where read value is stored)   


