#!/bin/sh
cd /var/www/html/
# echo "Inicio de log script remoto"
#git pull
#git checkout ajustes-sin-descarga-playera
#git pull
# echo "git status"
# echo ""
# git status
# echo "git log"
# echo ""
# git log
#Pase de imagenes de SSL a SESSIONS
# echo "Obtencion del zip de la ruta"
# echo "============================"
# cd /var/www/html/
# wget -c https://ssl.codice.com/fuzetea_dev/ssluploads.zip
# echo "============================"
# echo "Fin del ZIP, UNZIP en assets/uploads"
# echo "============================"
# unzip ssluploads.zip -d /var/www/html/assets/uploads
# echo "============================"
# echo "FIN UNZIP"
# echo "============================"
# echo "git status"
# echo "============================"
# echo ""
# git status
# echo "============================"
# echo "EOF"
# echo "============================"
rm -f /var/www/html/scriptlog.txt
# rm -f /var/www/html/assets.txt
# rm -f /var/www/html/ssluploads.zip
# ls -ln /var/www/html/
# find /var/www/html/ -type f -name "*.txt"

rm -f /var/www/html/output.log.txt
rm -f /var/www/html/assets/assets.txt
rm -f /var/www/html/assets/san.txt
rm -f /var/www/html/san.txt
rm -f /var/www/html/scriptlog.txt