#!/bin/bash
# extract the user names
for i in $(cat ldapusers)
do
	USER=${i%%,*} #Delete everything after the first comma
	USER=${USER#*=} #Delete everything before the =
	echo $USER >> usersldap
done

