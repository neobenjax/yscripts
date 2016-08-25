#!/bin/sh
cd /var/www/html/
echo "Inicio de log script remoto"
git pull
echo "git status"
echo "============="
git status
echo "============="
echo "git log"
echo "=========="
git log
echo "============================"
echo "EOF"
echo "============================"