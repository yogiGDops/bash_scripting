
#!/usr/bin/bash

#------------------------------------------------------------------------------#
#Author: Yogesh
#Date: 02/09/24
#Script no: 030
#Title: To check if file exists on a specific path or not, else create new file
#------------------------------------------------------------------------------#

# proivde the file path
file_path="/home/suyog/automation/test.sh"

#check if file exists
if [ -f $file_path ]; then
	echo "file exixts in the location: $file_path"
else
	echo "file does not exists in the location: $file_path"
#if file does not exists the create new file
touch $file_path
	echo "creating new file"
fi


