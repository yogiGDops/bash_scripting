#------------------------------------------------------------------------------#
#Author: Yogesh
#Date: 04/09/24
#Project Script no.: 003
#Title:In the given directory, if you find files more than a size ex 3 kb,
#compress thoese files and move to archive folder. Also, send email notification. 
#------------------------------------------------------------------------------#

#!/usr/bin/bash

#steps:
#provide file path of folder whose file size is to be checked
#check if directory exists or not 
#if directory does not contains archive folder then create it

#variables
file_path="/home/suyog/old_data/collection"
depth=1
run=0
TO="yogiops37@gmail.com"


#check if directory exists or not
if [ ! -d "$file_path" ]; then
	echo "directory does not exist: $file_path"
	exit 1 #useful in handling -ve cases, 0 = successful, 1 = unsuccessful
fi

#check if archive directory does not exists then create it
if [ ! -d "$file_path/archive" ]; then
	mkdir "$file_path/archive"
fi

#find the list of files greater than 3k
for i in $(find "$file_path" -maxdepth "$depth" -type f -size +3k); do

	if [ "$run" -eq 0 ]; then
		
		echo "[$(date "+%Y-%m-%d %H:%M:%S")] archiving $i ==> $file_path/archive"
		
		gzip "$i" || exit 1
		
		mv "$i.gz" "$file_path/archive" || exit 1
	fi
done

echo -e "Subject: Archiving files!!!\n\nfile size greater than 3kb found at $file_path/archive is archived." | ssmtp $TO





















