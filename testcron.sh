#! /bin/bash

minutes=0
hour=0
day_of_month=0
month=0
day_of_week=0

echo "Enter the schedule parameters (minutes/hour/day of month/month/day of week)"
echo "Minutes: "
read minutes
echo "Hour (0-23): "
read hour
echo "Day of Month (1-31): "
read day_of_month
echo "Month (1-12): "
read month
echo "Day of Week (0-6): "
read day_of_week

if [ "$minutes" = "0" ]
then
	minutes="*"
fi

if [ "$hour" = "0" ]
then
	hour="*"
fi

if [ "$day_of_month" = "0" ]
then
	day_of_month="*"
fi

if [ "$month" = "0" ]
then
	month="*"
fi

if [ "$day_of_week" = "0" ]
then
	day_of_week="*"
fi

sudo echo "$minutes $hour $day_of_month $month $day_of_week osboxes date >> /home/osboxes/dates.txt" >> /etc/crontab

service cron start    # to start the crontab service
