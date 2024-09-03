#-----------------------------------------------------------------------------#
#Author: Yogesh
#Date:31/0/24
#script no.: 012
#Title: While loop
#-----------------------------------------------------------------------------#

count=0
num=5

while [[ $count -le $num ]]
	#Note here we are dealing with integers so apply [[ space ]] accordingly
	do
		echo "I am learning shell scripting"
let count++
#let is used to perform arithmatic operation
	done
