#!/usr/bin/bash
#-----------------------------------------
#Author: Yogesh
#Date: 26/08/2024
#script No: 001
#Task: To print welcome message
#Objective: To learn how to print welcome message in shell scripting (SS)
#command used: echo with different combination
##-----------------------------------------

#Normal printing: This print statement as it is
echo "1_Hello Yogesh! Welcome to the world of linux"
#echo -e "\e[5m This is green text \e[0m"

# -n     do not output the trailing newline: This print statement as it is
echo -n "2_Hello Yogesh! Welcome to the world of linux"

# -e     enable interpretation of backslash escapes: This print the statement on one line upper
echo -e  "3_Hello Yogesh! Welcome to the world of linux"

# -ne     combination of -ne together: This print statement as it is
echo -ne "4_Hello Yogesh! Welcome to the world of linux"

#  If -e is in effect, the following sequences are recognized:

#   \b     backspace: This is not working as expected
#echo \b1234\b\b
echo -e  "\bb5_Hello Yogesh! Welcome to the world of linux\b\b\b\b\b"

#   \c     produce no further output: (Doesnot print after \c)
echo -e  "6_Hello Yogesh!\c Welcome to the world of linux"

#   \e     escape: It eats the first word after \e
echo -e  "7_Hello Yogesh! \e Welcome to the \e world of linux"

#   \n     new line: anything after \n comes to new line
echo -e  "8_Hello Yogesh!\n Welcome to the\n world of linux"

#   \t     horizontal tab: creats tab after \t
echo -e  "9_Hello Yogesh!\t Welcome to the\t world of linux"

#   \v     vertical tab: works correctly
echo -e  "10_Hello Yogesh!\v Welcome to the\v world of linux"

#-E	disable interpretation of backslash escapes (default)
echo -eE  "11_Hello Yogesh! Welcome to the world of linux\n"
#for printing text in colur and some simple effect
echo -e "\e[5;31;47m12_Hello Yogesh! Welcome to the world of linux \e[0m"


