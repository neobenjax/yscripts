#!/bin/sh
yum -y install php56-gd git-all
#service httpd restart

cd /var/www/html/

if [ -d "Views" ];
then 
	git pull;
else 
	cd /var/www/
	rm -fR /var/www/html
	mkdir /var/www/html
	cd /var/www/html
	git clone https://chuckcruz:c0d1c32375@github.com/hubcodice/fuzetea .;
fi;

cd /san

if [ -d "uploads" ];
then echo "existe uploads do nothing";
else
	mkdir /san/uploads;
fi;

cd /var/www/html/assets

if [ -h "uploads" ];
then echo "Existe y es un symlink";
else ln -s /san/uploads /var/www/html/assets/uploads;
fi;

chown -R ec2-user:ec2-user /san/uploads
chmod -R 0777 /san/uploads
chown -R ec2-user:ec2-user /var/www/html/assets/uploads
chmod -R 0777  /var/www/html/assets/uploads

cd /var/www/html/

ifconfig > /var/www/html/ix.txt
rm -f /var/www/html/scriptlog.txt
rm -f /var/www/html/ix.txt