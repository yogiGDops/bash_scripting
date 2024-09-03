
#!/usr/bin/bash

#------------------------------------------------------------------------------#
#Author: Yogesh
#Date: 02/09/24
#Script no: 031
#Title: To check if file exists on a specific path then delete the file
#------------------------------------------------------------------------------#

# proivde the file path
file_path="/home/suyog/automation/test.sh"

#check if file exists
if [ -f $file_path ]; then
	echo "file exists in the location: $file_path"

	rm -f $file_path
        echo "deleted the file"
else
	echo "file does not exists in the location: $file_path"
fi


