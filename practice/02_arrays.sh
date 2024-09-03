#! /usr/bin/bash
#------------------------------------------------------------------------#
#Author: Yogesh
#Date: 26/08/2024
#script No: 002
#Task: To understand the behaviour of arrays in shell scripting
#Focus item: how to cal the length of array and how to print o/p on terminal on new line
#------------------------------------------------------------------------#



my_array=(1 1.5 hello "Team Blue!!!")
echo "The values in the array are ${my_array[*]}"

#to print specific values of array
echo -e "\nvalue on 2nd index is ${my_array[2]}"

# to print all values of arrays 

# this will print the 0th index value
echo -e "\nvalues in array are ${my_array}"

#to print all values of array we have define all index togehter using *
echo -e  "\nvalues in array are ${my_array[*]}"

my_array_1=(1, 1.5, 'hello', "Team Blue!!!","34.396i")
echo -e "\nvalues in array are ${my_array_1[*]}"

#to print specific values of array
echo -e "\nvalue on 2nd index is ${my_array_1[2]}"
#adding , doesnot change the index value

echo -e "\n${my_array_1[3]} is the best sport team"

#------------------------------------------------------------------------#
#To know the number of elements in the array or 
#to know the length of array, we use ${#name_of_array_variabel} like

echo -e "\nlength of array is ${#my_array_1[*]}"


#------------------------------------------------------------------------#
#To print specific values from the array we use ${my_array_1[*]:starting value:How many values after starting value}

echo -e "\n\e[5;31;47mthe selected elements of array is ${my_array_1[*]:2:2}\e[0m"


#------------------------------------------------------------------------#
#Updating existing array with new values or appending multiple values in array
# take care of += at the time of appending array
# and [@] at the time of printing array
my_array_1+=(, linux, ip4, ip6, pyhton)

echo -e "\nAppended values in array are ${my_array_1[@]}"	










