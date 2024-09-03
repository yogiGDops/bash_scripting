#------------------------------------------------------------------------------#
#Author: Yogesh
#Date :01/0924
#Script no.: 026
#Title: Shell script to identify and copy the file of specific extension to 
#another directory
#------------------------------------------------------------------------------#

#!/bin/bash

# Specify the directory
dir="/home/suyog/automation/"

# to check if directory exists use -d
if [ -d "$dir" ]; then
	# print the files from the directory
  echo "Files in the directory: $dir"
  
# Loop over all files in the directory and pick files which has extension .txt
  for file in "$dir"*.txt; do
         echo "$file"
      #whatever files with extension .txt appears, copy that files in given directory
	cp $file "/home/suyog/dir1"
     done
else
 echo "Directory not found: $dir"
fi


