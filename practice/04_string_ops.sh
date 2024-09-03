#! /usr/bin/bash
#-----------------------------------------------------------#
#Author: Yogesh
#Date: 27/08/24
#script no: 004
#Title: Basic string operations in shell scripting
<<<<<<< HEAD
#-----------------------------------------------------------#
=======
##-----------------------------------------------------------#
>>>>>>> origin/main

#1 To print variable myVar = "Hello World"

myVar="Hi, I am James Bond..."
echo -e "${myVar}"

#2 To know length of my variable
echo -e "\nThe length of my variable is:${#myVar}"

#3 upper case=${x^^}
echo -e "\nUPPERCASE:${myVar^^} "

#4 lower case=${y,,}
echo -e "\nlowercase:${myVar,,} "

#5 replace=${myVar/world/buddy}
echo -e "\nreplacing James family name:${myVar/Bond/Cameroon}"

#6 slicing is done on indexing, define start point followed by length of character
#slice=${myVar:5:12}
echo -e "\nslicing name from our variable:${myVar:9:18}"



