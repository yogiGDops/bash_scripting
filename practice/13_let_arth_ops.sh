#!/bin/bash

#-----------------------------------------------------------------------------#
#Author: Yogesh
#Date 31/08/24
#Script no: 013
#Title: Athmatic operation using let commands
#-----------------------------------------------------------------------------#
#The let command in Bash is used for evaluating various arithmetic expressions.
#let expression (+,-,*,/ or any other operation)


# Addition
let "a = 5 + 3"
echo $a  

# Subtraction
let "b = 10 - 2"
echo $b  

# Multiplication
let "c = 4 * 2"
echo $c  

# Division
let "d = 16 / 2"
echo $d  

# Increment
let "e = 5"
let "e++"
echo $e  

# Decrement
let "f = 5"
let "f--"
echo $f  

#multiple expression
let "g = 5 + 3" "h = g * 2" "z=g+h"
echo $g  
echo $h  
echo $z		




