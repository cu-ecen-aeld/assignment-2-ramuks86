#!/bin/sh
# writer script for assignment 1
# Author: Sriram Kattimani

writefile=$1
writestr=$2

if [ $# -lt 2 ]; then
	#echo 'required arguments are not satisfied'
	echo 'ERROR : Invalid number of arguments'
	echo 'Total number of arguments should be 2'
	echo 'The order of the arguemnts should be :'
	echo '1)Full file Path'
	echo '2)String to be written in the specified file'

	exit 1
fi

if [ -d $writefile ]; then
	echo "ERROR : $writefile is a directory"
	exit 1
fi

#if [ -f $writefile ]; then
	#echo "$writefile is a regular file"
#else
	#echo "Creating a regular file $writefile"
#fi

echo $writestr > $writefile
echo
echo "String $writestr written into file $writefile"
echo