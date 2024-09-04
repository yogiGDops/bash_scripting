#------------------------------------------------------------------------------#
#Author: Yogesh
#Date:05/09/24
#script no.:035
#Title: shell script to know how does find command works
#------------------------------------------------------------------------------#
#! /usr/bin/bash


read -p "enter the file name:" filename
read -p "enter the file path:" filepath

#enter the file name: cal
#enter the file path:/home/suyog/old_data/dir1/

#check if file path exists
if [ ! -d "$filepath" ]; then
	echo -e "directory does not exist at '$filepath' \n"
	exit 1
fi

# Use 'find' to search for files that match the pattern (case-insensitive)
found_files=$(find "$filepath" -iname "*$filename*")
#* allows for a partial match of the filename in a case-insensitive manner

# Check if any similar files names were found
if [ -n "$found_files" ]; then
	#-n will ensure if the variable is non empty
    
	echo -e "The following files match '$filename' in directory '$filepath'\n"
    	echo "$found_files"
else
    echo "No files found matching '$filename' in directory '$filepath'."
fi



