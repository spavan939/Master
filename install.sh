#!/bin/bash
apt-get -y update

# install Apache2
apt-get -y install apache2 

sudo su

wget --no-check-certificate https://demoavi.com/

cp index.html /var/www/html/index.html

# restart Apache
apachectl restart
