#!/bin/sh
cd /var/www/html/
echo "Inicio de log script remoto"
git pull
git checkout ajustes-sin-descarga-playera
git pull
echo "git status"
echo ""
git status
echo "EOF"
