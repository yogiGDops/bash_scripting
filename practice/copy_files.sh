#!/usr/bin/bash

#------------------------------------------------
#Author: Yogesh
#Date:24/8/24
#About: To copy file from one location to multiple locations
#
#------------------------------------------------

# Path of file to copy

source_destination="/home/suyog/dir1"

#Path of directories 

target_directories=(

	"/home/suyog/secondyr"
	"/home/suyog/thirdyr"
	"/home/suyog/fourthyr"
)


	cp -r "${source_destination}" "${target_destination}"

 
