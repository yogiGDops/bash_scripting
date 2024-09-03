#! /usr/bin/bash
#------------------------------------------------------#
#Author: Yogesh
#Date: 27/08/24
#Script no: 005
#Title: How to make shell scripting interactive?
#Objective: understand different ways of taking inputs from user
#------------------------------------------------------#

#1) Using read command: (Ask--read--print)

# Ask user:(name or to pass some values)
echo "Enter the initial value of x"

# then read the input provided by the user 
read input

# print the name or value
echo -e "\nThe inital value of x is: ${input}.\n"

#--------------------------------------------------------#
#2) Ask user for multiple inputs like:(name/age/phoneno/emailid)
echo "Enter your name age phn no emailid in one line without seperating by ,"

# read inputs with using 1 read cmd and passing multiple inputs seperated by space
read input_1 input_2 input_3 input_4

# print the multiple inputs
echo -e "\nYour name is ${input_1}\nyour age is ${input_2}\nyour phnno is${input_3}\nyour emailid is${input_4}.\n"


#--------------------------------------------------------#
#3) Here we print the echo message between read and input using -p options like

read -p "enter your age:" input

echo -e "Your age is ${input}"

#--------------------------------------------------------#
#4) Here we print the echo message between read and input using -p options like

read -p "enter your name age phone no:" input_1 input_2 input_3

echo -e "\nYour age is: ${input_2}\nYour name is: ${input_1}\nYour phone no is:${input_3}" 


#--------------------------------------------------------#
#Note: the difference between using echo and read i/p from user is 
#echo takes input in next line
#whereas read cmd takes input on the same line

