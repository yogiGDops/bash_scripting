#------------------------------------------------------------------------------#
#Author: Yogesh
#Date:02/09/24
#Script no.:029
#Title: To continue the loop when condition is acheived
#------------------------------------------------------------------------------#

#!/usr/bin/bash

#Define the continue criteria
letter="e"

#note: how to pass arrays
list=("a" "e" "i" "o" "u") 

#note: how to define list of array in loop
for vowel in "${list[@]}";

do
	#contine the loop if captain found
	if [[ "$vowel" == "$letter" ]] then

echo "The vowels is $vowel"
continue
	fi
echo "The vowels in list are $vowel"

done




