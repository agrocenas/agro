#!/bin/bash

targetdir=/var/www
sourcedir=../agro


echo "deploy started..."
sudo cp -r $sourcedir $targetdir
echo "Contents copied !"  
sudo chmod -R 777 /var/www/agro/
echo "Perminssions set! "
echo "Deploy Succesfull ..."
