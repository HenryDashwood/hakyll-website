#!/bin/bash
sudo apt update -y
sudo apt install -y apache2 
sudo apt-get install -y haskell-stack
stack install hakyll

if [ -f /var/www/html/index.html ]
then
rm -f /var/www/html/index.html
fi