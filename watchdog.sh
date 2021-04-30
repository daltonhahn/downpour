#!/bin/bash

aws ec2 describe-instances --query 'Reservations[].Instances[][PublicIpAddress]' --filter "Name=instance-state-name,Values=running" "Name=tag:Watchdog,Values=Yes" --output text
