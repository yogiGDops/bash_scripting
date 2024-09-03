#------------------------------------------------------------------------------#
#Author: Yogesh
#Date:01/09/24
#Script no.:027
#Title: To copy the process output in a text file
#------------------------------------------------------------------------------#
#!/usr/bin/bash

# read from user to which domain name to ping

read -p "Enter the domain name to ping:" target

#path where output will be stored
output="/home/suyog/automation/process_op.txt"

echo  "The ping to $target is stored in file $output"

# redirecting ping output to output file
#while reads the output line by line.
ping -c 3 $target | while read line; do

current_time=$(date '+%Y-%m-%d %H:%M:%S')
status=$?
#combining date with ping output
echo -e "$status - $current_time -$line/n"

echo "$status - $current_time - $line" >> "$output"

done &> /dev/null
# &> redirect the output or error to the file provided.
# dev/null makes the magic, it keeps the terminal clean.
# its a special file that discards all data written to it.

