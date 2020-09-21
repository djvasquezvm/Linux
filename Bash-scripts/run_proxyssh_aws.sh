#!/bin/bash
echo "Write the ip address"
read ip_ssh
part1=`echo $ip_ssh | awk -F. '{print $1}'`
part2=`echo $ip_ssh | awk -F. '{print $2}'`
part3=`echo $ip_ssh | awk -F. '{print $3}'`
part4=`echo $ip_ssh | awk -F. '{print $4}'`
command_program="ssh -D 9999 -fNCq -i \"/home/daniel/Downloads/prueba.pem\" ec2-user@ec2-$part1-$part2-$part3-$part4.us-east-2.compute.amazonaws.com"
eval "$command_program"
#clear
#sleep 1
#clear
