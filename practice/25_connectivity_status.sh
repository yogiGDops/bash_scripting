#------------------------------------------------------------------------------#
#Author: Yogesh
#Date: 01/09/24
#script no.: 025
#Titile: To check the  connectivity and display the status
#------------------------------------------------------------------------------#

read -p "Enter the website whose status you want to check? (e.g. www.google.com):" site

ping -c 1 "$site"
ping_status=$?
sleep 5s


if [[ $ping_status -eq 0 ]]; then 
	echo "ping connection succesful to $site"
	#www.google.com	

elif [[ $ping_status -eq 1 ]]; then
	echo "ping connection failed to $site"
	
else 
	echo "ping connection status unknown to $site"
	#www.yahiie.com"
fi

