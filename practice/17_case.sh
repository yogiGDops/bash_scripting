#------------------------------------------------------------------------------#
#Author: Yogesh
#Date:31/08/24
#Script no.:017
#Title: How to use CASE (similar to switch case in java) in shell scripting
# we ask user to give single i/p from multiple choices and print the o/p for the choice
#Example: The script checks the day of the week and prints the corresponding opening hours for a fictional bank:
#------------------------------------------------------------------------------#

#! /usr/bin/bash

#read day of week
read -p "Enter the todays day (like mon tue wed):" day

case $day in #case goes with case variable followed by in
		mon) echo "${day}day bank opeing hrs are from 7:00 am to 1 pm";;
#mon, tue, fri) are patterns that the script matches against the value of the variable being tested—in this case, day
	# pttern) MESSAGE followed by ;;(closing remark)
		tue) echo "${day}day bank opeing hrs are from 9:00 am to 5:30 pm";;
		wed) echo "${day}nesday bank opeing hrs are from 7:00 am to 1 pm";;
		thu) echo "${day}rsday bank opeing hrs are from 9:00 am to 5:30 pm";;
		fri) echo "${day}day bank opeing hrs are from 7:00 am to 1 pm";;
		sat) echo "${day}urday weekly off, branch will open on monday 7:00 am";;
		sun) echo "${day}day weekly off, branch will open on monday 7:00 am";;
		*) echo "${day} invalid day, please enter correct day with its first 3 letters in small case"

esac #closing the case statement


