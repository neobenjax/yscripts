#!/bin/sh
yum -y install php56-gd git-all
#service httpd restart

cd /var/www/html/

# rm -fR /var/www/html
# rm -fR /san/*

if [ -d "Views" ];
then 
	git pull;
else 
	cd /var/www/
	rm -fR /var/www/html
	mkdir /var/www/html
	cd /var/www/html
	git clone https://chuckcruz:c0d1c32375@github.com/hubcodice/StaClara .;
fi;

cd /san

if [ -d "antojos" ]; then echo "Existe antojos do nothing"; else mkdir /san/antojos; fi;

if [ -d "bancomedia" ]; then echo "Existe bancomedia do nothing"; else mkdir /san/bancomedia; fi;

if [ -d "blogs" ]; then echo "Existe blogs do nothing"; else mkdir /san/blogs; fi;

if [ -d "configuracion" ]; then echo "Existe configuracion do nothing"; else mkdir /san/configuracion; fi;

if [ -d "feature" ]; then echo "Existe feature do nothing"; else mkdir /san/feature; fi;

if [ -d "fondos" ]; then echo "Existe fondos do nothing"; else mkdir /san/fondos; fi;

if [ -d "foodies" ]; then echo "Existe foodies do nothing"; else mkdir /san/foodies; fi;

if [ -d "resultados" ]; then echo "Existe resultados do nothing"; else mkdir /san/resultados; fi;

if [ -d "test" ]; then echo "Existe test do nothing"; else mkdir /san/test; fi;


# cd /var/www/html
# git status > gitstatus.txt
# git log > gitlog.txt
# git pull > gitpull.txt

cd /var/www/html/assets

# echo "==============================" >> /var/www/html/status.log.txt;
# echo "*****Chequeo de Symlinks******" >> /var/www/html/status.log.txt;
# echo "==============================" >> /var/www/html/status.log.txt;


if [ -h "antojos" ]; then echo "Existe antojos y es un symlink"; else ln -s /san/antojos /var/www/html/assets/antojos; fi;

if [ -h "bancomedia" ]; then echo "Existe bancomedia y es un symlink"; else ln -s /san/bancomedia /var/www/html/assets/bancomedia; fi;

if [ -h "blogs" ]; then echo "Existe blogs y es un symlink"; else ln -s /san/blogs /var/www/html/assets/blogs; fi;

if [ -h "configuracion" ]; then echo "Existe configuracion y es un symlink"; else ln -s /san/configuracion /var/www/html/assets/configuracion; fi;

if [ -h "feature" ]; then echo "Existe feature y es un symlink"; else ln -s /san/feature /var/www/html/assets/feature; fi;

if [ -h "fondos" ]; then echo "Existe fondos y es un symlink"; else ln -s /san/fondos /var/www/html/assets/fondos; fi;

if [ -h "foodies" ]; then echo "Existe foodies y es un symlink"; else ln -s /san/foodies /var/www/html/assets/foodies; fi;

if [ -h "resultados" ]; then echo "Existe resultados y es un symlink"; else ln -s /san/resultados /var/www/html/assets/resultados; fi;

if [ -h "test" ]; then echo "Existe test y es un symlink"; else ln -s /san/test /var/www/html/assets/test; fi;



# echo "==============================" >> /var/www/html/status.log.txt;
# echo "********Permisologias*********" >> /var/www/html/status.log.txt;
# echo "==============================" >> /var/www/html/status.log.txt;

cd /san
chown -R ec2-user:ec2-user *
chmod -R 0777 *

chown -R ec2-user:ec2-user /var/www/html/assets/antojos
chown -R ec2-user:ec2-user /var/www/html/assets/bancomedia
chown -R ec2-user:ec2-user /var/www/html/assets/blogs
chown -R ec2-user:ec2-user /var/www/html/assets/configuracion
chown -R ec2-user:ec2-user /var/www/html/assets/feature
chown -R ec2-user:ec2-user /var/www/html/assets/fondos
chown -R ec2-user:ec2-user /var/www/html/assets/foodies
chown -R ec2-user:ec2-user /var/www/html/assets/resultados
chown -R ec2-user:ec2-user /var/www/html/assets/test

chmod -R 0777  /var/www/html/assets/antojos
chmod -R 0777  /var/www/html/assets/bancomedia
chmod -R 0777  /var/www/html/assets/blogs
chmod -R 0777  /var/www/html/assets/configuracion
chmod -R 0777  /var/www/html/assets/feature
chmod -R 0777  /var/www/html/assets/fondos
chmod -R 0777  /var/www/html/assets/foodies
chmod -R 0777  /var/www/html/assets/resultados
chmod -R 0777  /var/www/html/assets/test


# echo "==============================" >> /var/www/html/status.log.txt;
# echo "*******Log de permisos********" >> /var/www/html/status.log.txt;
# echo "==============================" >> /var/www/html/status.log.txt;

# echo "ASSETS" >> /var/www/html/status.log.txt;
# ls -ln /var/www/html/assets >> /var/www/html/status.log.txt;

# echo "SAN" >> /var/www/html/status.log.txt;
# ls -ln /san >> /var/www/html/status.log.txt;
# ls -l /san  >> /var/www/html/status.log.txt;

# echo "==============================" >> /var/www/html/status.log.txt;
# echo "*******COPIA DE ARCHIVOS********" >> /var/www/html/status.log.txt;
# echo "==============================" >> /var/www/html/status.log.txt;

# cp -R /var/www/html/assets/backup/antojos/* /var/www/html/assets/antojos
# cp -R /var/www/html/assets/backup/bancomedia/* /var/www/html/assets/bancomedia
# cp -R /var/www/html/assets/backup/blogs/* /var/www/html/assets/blogs
# cp -R /var/www/html/assets/backup/configuracion/* /var/www/html/assets/configuracion
# cp -R /var/www/html/assets/backup/feature/* /var/www/html/assets/feature
# cp -R /var/www/html/assets/backup/fondos/* /var/www/html/assets/fondos
# cp -R /var/www/html/assets/backup/foodies/* /var/www/html/assets/foodies
# cp -R /var/www/html/assets/backup/resultados/* /var/www/html/assets/resultados
# cp -R /var/www/html/assets/backup/test/* /var/www/html/assets/test

# cd /var/www/html/
# git pull
# echo "git status"
# echo "============="
# git status
# echo "============="
# echo "git log"
# echo "=========="
# git log
# echo "============================"
# echo "EOF"
# echo "============================"
cd /san
find "$PWD"
# rm -f /var/www/html/scriptlog.txt