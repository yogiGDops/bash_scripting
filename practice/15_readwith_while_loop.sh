#------------------------------------------------------------------------------#
#Author: Yogesh
#Date:31/08/24
#Script no.:015
#Title: reading content using while loop
#------------------------------------------------------------------------------#

#! /usr/bin/bash

while read myVar
	#myVar is random variable, you can use any variable
do
	echo "Value from file is $myVar"
done < "/home/suyog/dir1/wordcount.sh"



