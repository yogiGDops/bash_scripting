#------------------------------------------------------------------------------#
#Author:Yogesh
#Date:31/08/24
#Script no:021
#Title:
#------------------------------------------------------------------------------#

#! /usr/bin/bash

simple_calci (){
	let "sum =$1 + $2"
	let "diff =$1 - $2"
	let "prod =$1 * $2"
	let "div =$1 / $2"
	# let followed by double "" inside which any arithmatic operation"
	echo -e "The sum of two number $1 and $2 is $sum\n"
	echo -e "The diff of two number $1 and $2 is $diff\n"
	echo -e "The prod of two number $1 and $2 is $prod\n"
	echo -e "The division of two number $1 and $2 is $div\n"

}

simple_calci 10 6



