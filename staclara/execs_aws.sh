#!/bin/sh
cd /var/www/html/
echo "Inicio de log script remoto"
echo "============================"
echo "CARPETAS INTERNAS"
echo "============================"
cd /san
# mkdir /san/bancomedia/principal
# mkdir /san/bancomedia/thumbnail
# mkdir /san/blogs/thumbnail
# mkdir /san/feature/thumbnail
# mkdir /san/foodies/thumbnail
# mkdir /san/resultados/thumbnail
# mkdir /san/test/thumbnail


# chown -R ec2-user:ec2-user /var/www/html/assets/antojos
# chown -R ec2-user:ec2-user /var/www/html/assets/bancomedia
# chown -R ec2-user:ec2-user /var/www/html/assets/blogs
# chown -R ec2-user:ec2-user /var/www/html/assets/configuracion
# chown -R ec2-user:ec2-user /var/www/html/assets/feature
# chown -R ec2-user:ec2-user /var/www/html/assets/fondos
# chown -R ec2-user:ec2-user /var/www/html/assets/foodies
# chown -R ec2-user:ec2-user /var/www/html/assets/resultados
# chown -R ec2-user:ec2-user /var/www/html/assets/test

# chmod -R 0777  /var/www/html/assets/antojos
# chmod -R 0777  /var/www/html/assets/bancomedia
# chmod -R 0777  /var/www/html/assets/blogs
# chmod -R 0777  /var/www/html/assets/configuracion
# chmod -R 0777  /var/www/html/assets/feature
# chmod -R 0777  /var/www/html/assets/fondos
# chmod -R 0777  /var/www/html/assets/foodies
# chmod -R 0777  /var/www/html/assets/resultados
# chmod -R 0777  /var/www/html/assets/test
echo "============================"
echo "LISTADO DE FILES"
echo "============================"
ls -ln /san
echo "============================***"
ls -lR /san
echo "============================"
echo "============================"
echo "EN SAN"
echo "============================"
ls -l /san/assets/antojos
ls -l /san/assets/bancomedia
ls -l /san/assets/blogs
ls -l /san/assets/configuracion
ls -l /san/assets/feature
ls -l /san/assets/fondos
ls -l /san/assets/foodies
ls -l /san/assets/resultados
ls -l /san/assets/test
echo "============================"
echo "EN ASSETS"
echo "============================"
ls -l /var/www/html/assets/antojos
ls -l /var/www/html/assets/bancomedia
ls -l /var/www/html/assets/blogs
ls -l /var/www/html/assets/configuracion
ls -l /var/www/html/assets/feature
ls -l /var/www/html/assets/fondos
ls -l /var/www/html/assets/foodies
ls -l /var/www/html/assets/resultados
ls -l /var/www/html/assets/test
#git pull
#git checkout ajustes-sin-descarga-playera
#git pull
# echo "git status"
# echo ""
# git status
# echo "git log"
# echo ""
# git log
echo "============================"
echo "EOF"
echo "============================"