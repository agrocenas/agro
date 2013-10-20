#!/bin/bash

targetdir=/var/www
sourcedir=../agro


echo "deploy started..."
sudo rm -r /var/www/agro
echo "directory removed"
sudo cp -r $sourcedir $targetdir
echo "Contents copied !"  
sudo chmod -R 777 /var/www
echo "Perminssions set! "
sudo service apache2 restart
echo "apache2 restarted"
echo "Deploy Succesfull ..." 
