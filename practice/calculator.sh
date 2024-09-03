#! /usr/bin/bash

#--------------------------------------------------------------------
#Author/ Yogesh
#Date:24/08/24
#Task : Basic arithmatic Operations in shell scripting
#Focus Area: How to pass Arithmatic Operators
#---------------------------------------------------------------------

#Assume one number is
a=50

#Assume another number is
b=40

#To add two numbers
c=$((a+b))

#To subtract two numbers
d=$((a-b))

#To multiply two numbers
e=$((a*b))

#To divide two numbers
f=$((a/b))

	echo The sum of two number is: "${c}"
	echo The difference of two number is: "${d}"
	echo The product of two number is: "${e}"
	echo The division of two number is: "${f}"
