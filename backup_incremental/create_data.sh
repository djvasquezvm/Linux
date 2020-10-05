i=1
while [ $i -lt 10 ]
do
	touch /home/daniel/$i.txt
	#rm -f /home/daniel/$i.txt
	echo "data $i" >> /home/daniel/$i.txt
	echo "data data data data data" >> /home/daniel/$i.txt
	((i++))
done
