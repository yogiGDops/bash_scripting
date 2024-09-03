#! /usr/bin/bash
##------------------------------------------------------------------------------#
#Author: Yogesh
#Date: 02/09/24
#Script no.:033
#Title: To check if user is root or not.
#------------------------------------------------------------------------------#
#

if [[ $UID -eq 0 ]]; then
	echo "User is root user"
else
	echo "User is not root user"
fi


