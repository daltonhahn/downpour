#!/bin/bash

IPS=$(aws ec2 describe-instances --query 'Reservations[].Instances[][PublicIpAddress]' --filter "Name=instance-state-name,Values=running" "Name=tag:Watchdog,Values=Yes" --output text)
for i in $IPS
do
	echo $i
	# curl their missing file
	# increment file num
	# diff all files together?
done
