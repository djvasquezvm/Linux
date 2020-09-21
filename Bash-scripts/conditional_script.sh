#!/bin/bash

if [ -z $1 ] #Check if there is a variable $1.
then
	echo "You have to provide an argument"
	exit 6
fi

echo "The argument is $1"
