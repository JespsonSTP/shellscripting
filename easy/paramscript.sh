#!/bin/bash

#this is a script to test how to get positional parameters in bash

#echo 'param1 = ' $1
#echo 'param2 = ' $2
#echo 'param3 = ' $3

#arrays in bash
declare -a mynamearray = (first lastname)
declare -iA mynameandagearray = ([first lastname]=54)
#echo 'mylastname = ' ${mynamearray[3]}

exit 0