#! /usr/bin/bash
#-----------------------------------------------------------------------------#
#Author: Yogesh
#Date: 27/08/24
#script no: 007
#Title: Understand the arthmatic operations in shell scripting
#Focus item: bc (precision calculator language) and its math library bc -l
#-----------------------------------------------------------------------------#

#-----------------------------------------------------------------------------#
# using bc
#-----------------------------------------------------------------------------#
echo "Arithmatic operations on two numbers"
read -p "enter value of x1:" x1
read -p "enter value of x2:" x2

#sum
# while defining expression nothing is required between echo and expression like this
#echo sum "$x1+$x2" | bc becuase of sum this expression does not work
# observe only expression in under "" commas.
echo "$x1+$x2" |bc 
echo "$x1-$x2" |bc 
echo "$x1*$x2" |bc 
#echo "$x1/$x2" |bc #this does not work, becuase we did not define the decimal values  
echo "scale=2;$x1/$x2" |bc	#scale helps to define decimal points after 0 
echo "scale=2; sqrt($x1)" |bc 
echo "scale=2; ($x1)^3" |bc

#To understand what output we are getting we need to print some message like

add=$(echo "$x1 + $x2" | bc) # Remember how to pass the values in variable
echo -e "\nthe sum of two numbers are ${add}.\n"

diff=$(echo "$x1-$x2" |bc)
echo -e "\nthe diff of two numbers are ${diff}.\n"

prod=$(echo "$x1*$x2" |bc)
echo -e "\nthe prod of two numbers are ${prod}.\n"

division=$(echo "scale=2;$x1/$x2" |bc)
echo -e "\nthe division of two numbers are ${division}.\n"

sq_root=$(echo "scale=2; sqrt($x1)" |bc)
echo -e "\nthe sq root of x1 is ${sq_root}.\n"

cube_root=$(echo "scale=2; ($x1)^3" |bc)
echo -e "\nthe cube root of x1 is ${cube_root}.\n"







