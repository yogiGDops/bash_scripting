#------------------------------------------------------------------------------
#Author: Yogesh
#Date: 03/09/24
#Project script no: 002
#Title: Monitoring free disk space and send email alert
#------------------------------------------------------------------------------#
#!/usr/bin/bash

# Define the command that will give the free disk space

free_space=$(df -H | grep drivers | awk '{print $5}'| tr -d %)
# to store the command o/p in variable we use $parenthesis

#to send email alert
TO="yogiops37@gmail.com"

#Define the threshold value below which we want alert
thresh=60

if [[ $free_space -ge $thresh ]]; then

	#send email notification with warning message
       echo -e "Subject: Disk space alert!!!\n\nWARNING: disk space usage is $free_space%, which is above the threshold of $thresh%." | ssmtp $TO
else
        echo "disk space $free_space% is in good condition"
fi
