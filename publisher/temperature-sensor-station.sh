#!/bin/bash

echo "Starting to measure temperature..."

while :
do
	acutalTemp=$[ $RANDOM % 30 + 10 ]
	echo "Measured the temperature $acutalTemp °C"

	if [[ $acutalTemp > 30 ]]; then
		echo "The temperature is above 30 °C, sending an alarm!"
		echo $acutalTemp | kafka-console-producer --broker-list 10.29.19.180:9092 --topic temperature-alarms 
	fi

	sleep 10
done
