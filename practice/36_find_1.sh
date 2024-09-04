#------------------------------------------------------------------------------
#Author:Yogesh
#Date:05/09/2024
#Script no: 036
#Title: shell script to find files modified at a given directory within 7 days.
#------------------------------------------------------------------------------#

#!usr/bin/bash

To="yogiops37@gmail.com"

#read -p "Enter the file name:" file_name
read -p "enter the file path:" file_path

# check if file path exists
if [ ! -d "$file_path" ]; then

	echo directory doesnot exists at filepath: "$file_path"

fi

#check if files are modified in last 01 day

files_modified=$(find "$file_path" -mtime -7)

echo "list of files modified in last 7 days are $files_modified"

echo -e "Subject: File Modification Alert!!!\n\nWARNING: The following files were modified in the last 7 days at $file_path:\n\n$files_modified" | ssmtp $To

echo "Email notification sent to $To"
















