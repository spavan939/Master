#!/bin/bash

sudo su

cp /var/lib/cloud/instance/user-data.txt /tmp/user_data.json

Test=$(curl -H Metadata:true "http://169.254.169.254/metadata/instance/compute/resourceGroupName?api-version=2017-08-01&format=text")

sleep 2

sed -i 's/AVI-RESOURCE-GROUP/'"$Test"'/g' /tmp/user_data.json

sleep 1

reboot
