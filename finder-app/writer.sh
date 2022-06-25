#!/bin/sh
# Script for assignment 1 and assignment 2
# Author: Texniq

if [ $# -lt 2 ]
then
	echo "Both args shuld be specified: write file, write string."
	exit 1
fi

WRITE_FILE=$1
WRITE_TEXT=$2

WRITE_DIR=$(dirname $WRITE_FILE)

if [ ! -d $WRITE_DIR ]
then 
	mkdir -p $WRITE_DIR
	if [ $? -ne 0 ]
	then
		exit 1
	fi
fi

echo $WRITE_TEXT > $WRITE_FILE

exit 0