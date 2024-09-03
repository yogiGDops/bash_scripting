#------------------------------------------------------------------------------#
#Author: Yogesh
#Date: 31/08/24
#Script no.: 022
#Title: Using case statement for arithmatic operation
#------------------------------------------------------------------------------#
#! /usr/bin/bash

#step1: creating a function
echo "Enter two numbers"
read -p "Enter first number" x1
read -p "Enter second number" x2

add(){
	sum=$(echo "scale=2;$x1+$x2" |bc)      #remember how to pass arithmatic operation
echo "The sum of $x1 and $x2 is: $sum"
}

diff(){
diff=$(echo "scale=2;$x1 - $x2"|bc)      #remember how to pass arithmatic operation
echo "The diff of $x1 and $x2 is: $diff"
}

prod(){
prod=$(echo "scale=2;$x1 * $x2"|bc)      #remember how to pass arithmatic operation
echo "The prod of $x1 and $x2 is: $prod"
}

div(){
#div=$(( x1 / x2))       # integer operations can be passses like this
div=$(echo "scale=2; $x1 / $x2" |bc)       #remember how to pass arithmatic operation
echo "The division of $x1 and $x2 is: $div"
}

#step2: asking user for choice
echo -e "choose an option from below\n"
echo "1) Adding two numbers"
echo "2) subtracting two numbers"
echo "3) multiplying two numbers"
echo "4) dividing two numbers"
echo "5) exit"
read choice

case $choice in
	1) add;; #here we invoke the add function
	2) diff;;
	3) prod;;
	4) div;;
	5) echo "Exciting...";;
	*) echo "Invalid option selected";;
esac


