#! /bin/bash
file='book_prueba.txt'
while read line; do
	echo $line
done < $file
