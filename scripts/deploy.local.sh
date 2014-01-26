#!/bin/bash

targetdir=/var/www
sourcedir=../agro


echo "deploy started..."
rm -r /var/www/agro
echo "directory removed"
cp -r $sourcedir $targetdir
echo "Contents copied !"  
chmod -R 777 /var/www
echo "Perminssions set! "
/etc/init.d/apache2 restart
echo "apache2 restarted"
echo "Deploy Succesfull ..." 
