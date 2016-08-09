#!/bin/sh
cd /var/www/html/
echo "Inicio de log script remoto"
git pull
#git checkout ajustes-sin-descarga-playera
git checkout master
git pull
echo "git status"
echo ""
git status
echo "git log"
echo ""
git log
echo "EOF"
