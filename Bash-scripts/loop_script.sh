#!/bin/bash
#
# Script made in the LFCS preparation

COUNTER=1
COUNTER=$(( COUNTER*60 )) #the result will be an integer value

minusone(){ #Funtion to decrease COUNTER value
	COUNTER=$(( COUNTER - 1 ))
	sleep 1 #1 segundo
}

while [ $COUNTER -gt 0 ] #gt means greater than
do
	echo "You still have $COUNTER seconds left"
	minusone
done

[ $COUNTER = 0 ] && echo "Time is up" && minusone
[ $COUNTER = "-1" ] && echo "You now are one second late" && minusone

while true
do
	echo "You now are ${COUNTER#-} seconds late" #Use # to remove the sign -
	minusone
done
