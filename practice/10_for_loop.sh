#! /usr/bin/bash		
#------------------------------------------------------------------------------#
#Author: Yogesh
#Date: 30/08/24
#script no: 010
#Title: for loops in bash scripting
#------------------------------------------------------------------------------#

#Type:1

for i in {1..10}
do
	echo "${i}: Welcome to the world of bash scripting"
done

#Type:2

for i in {01..12..2}
do
	echo "$i: Thank you linux!"

done
#------------------------------------------------------------------------------#
# Type:3:  Using seq command
for i in $(seq 0 10)
do
  echo "$i: This is BASH scripting"
done

# Using increment in seq command
for i in $(seq 0 2 10) # The increment passing is not same as above
do
  echo "$i: This is SHELL scripting"
done

#------------------------------------------------------------------------------#

#passing the directory path
dir_path="/home/suyog/automation"

for file in "${dir_path}"/*.sh    
	#/* is very imp bcoz of which prog wont run,
	#we can pass speacific extension like *.sh, *txt or anything
do
if [ -f "$file" ];then
	echo "file name: $file"
fi
done
#-----------------------------------------------------------------------------#

# to count the number of files
dir_path="/home/suyog/automation"

#The find command searches for all files (-type f) in the specified directory.
#file_count=$(find ${dir_path}/*.sh -type f )

#The output of find is piped to wc -l, which counts the number of lines, effectively giving the number of files.
file_count=$(find ${dir_path}/*.sh -type f | wc -l )

echo "The number of files the directory has: $file_count"






















