#------------------------------------------------------------------------------#
#Author: Yogesh
#Date: 02/09/24
#Project script no: 001
#Title: Monitoring free ram space
#------------------------------------------------------------------------------#
#!/usr/bin/bash

# Define the command that will give the free ram space

free_space=$(free -mt | grep "Total" | awk '{print $4}')
# to store the command o/p in variable we use $parenthesis

#Define the threshold value below which we want alert
thresh=500

if [[ $free_space -le $thresh ]]; then
        echo "WARNING: RAM space $free_space is running low"
else
        echo "RAM space $free_space is sufficient"
fi
