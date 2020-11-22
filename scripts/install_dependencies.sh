#!/bin/bash
sudo apt update -y
sudo apt install -y apache2 

if [ -f /var/www/henrydashwood.com/index.html ]
then
rm -f /var/www/henrydashwood.com/index.html
fi