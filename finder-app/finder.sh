#!/bin/sh
# finder script for assignment 1
# Author: Sriram Kattimani

filesdir=$1
searchstr=$2

if [ $# -lt 2 ]; then
	#echo 'required arguments are not satisfied'
	echo 'ERROR : Invalid number of arguments'
	echo 'Total number of arguments should be 2'
	echo 'The order of the arguemnts should be :'
	echo '1)File Directory Path'
	echo '2)String to be searched in the specified directory path'

	exit 1
fi

if [ -d $filesdir ]; then
	#echo "$filesdir is a directory"
	echo
else
	echo "ERROR : No such directory exists"
	exit 1
fi

echo
#echo --------------------------Line1
X=$(grep -lr $searchstr $filesdir | wc -l)
#echo "Number of files containing string in provided directory = $X"
echo
#echo --------------------------Line2
Y=$(grep -r $searchstr $filesdir | wc -l)
#echo "Number of matching lines found = $Y"
echo
#echo --------------------------Line3
echo "The number of files are $X and the number of matching lines are $Y"
