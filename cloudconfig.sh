#!/bin/bash

sudo su

rm /var/lib/avi/etc/.setup.json.done

Test=$(curl -H Metadata:true "http://169.254.169.254/metadata/instance/compute/resourceGroupName?api-version=2017-08-01&format=text")

sleep 2

sed -i 's/AVI-RESOURCE-GROUP/'"$Test"'/g' /var/lib/cloud/instance/user-data.txt

sleep 1

reboot
