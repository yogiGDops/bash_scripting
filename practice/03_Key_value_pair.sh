#-----------------------------------------------------------------#
#Author: Yogesh
#Date: 26/08/24
#Script no: 003
#Title: How to store key value pairs
#
#-----------------------------------------------------------------#

#1) declaring the array (without this acript will not run)
declare -A details

#2) passing multiple properties or key value pairs in array
details=( [name]=Yogesh [age]=37 [city]=munich [work]=abc.com [mobile]=12345 [email]=xyz@kmail.com [salary]=3629.45)

#3) printing the key-values 
echo -e "my name is ${details[name]}.\nI live in ${details[city]}.\nI work in ${details[work]}."

echo -e "my emailid is ${details[email]}\nand mobile number is ${details[mobile]}"

#------------------------------------------------------------------#
#Note: In repository we see two files with same names which means
#Git is case-sensitive. This means that if you renamed a file or created a new file with the same name but different capitalization 
#(e.g., File.txt and file.txt), Git will treat them as two separate files. This can result in both versions appearing in your GitHub repository.










