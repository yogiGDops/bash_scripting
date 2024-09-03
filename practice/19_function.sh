#-----------------------------------------------------------------------------#
#Author: Yogesh
#Date: 31/08/24
#Script no.: 019
#Title: To use functions in shell scripting
#------------------------------------------------------------------------------#
#	function func_name {
#	echo "Hi"
#	}
#	--------------------
#	func_name # to invoke the function
#			or
#	func_name() {
#	echo "Hello"
#	}
#	--------------------
#	func_name
#------------------------------------------------------------------------------#
#! /usr/bin/bash
#Method 1
#function ss_header { 	#maintain space between function name and curly {, else prog gives error
#	echo "#-----------------------------------------------------------------------------#"
#	echo "#Author: Yogesh"
#	echo "#Date: "
#	echo "#Script no.:"
#	echo "#Title: "
#	echo "#-----------------------------------------------------------------------------#"
#}

#to call function pass function name
#ss_header
#-----------------------------------------------------------------------------#
#Method 2
ss_header() {    #maintain space between function name and curly {, else prog gives error
        echo "#-----------------------------------------------------------------------------#"
        echo "#Author: Yogesh"
        echo "#Date: "
        echo "#Script no.:"
        echo "#Title: "
        echo "#-----------------------------------------------------------------------------#"
}

#to call function pass function name
ss_header




