#------------------------------------------------------------------------------#
#Author: Yogesh
#Date:01/09/24
#Script no.:028
#Title: To break the loop when condition is acheived
#------------------------------------------------------------------------------#

#!/usr/bin/bash

#Define the breaking criteria
captn="sky"

#note: how to pass arrays
list=("dhoni" "sachin" "rahul" "virat" "rohit" "sky") 

#note: how to define list of array in loop
for player in "${list[@]}";

do
	#Break the loop if captain found
	if [[ "$player" == "$captn" ]] then

echo "present Indian cricket team captain is $captn"
break
	fi
done




