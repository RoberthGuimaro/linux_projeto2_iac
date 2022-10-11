#!/bin/bash

#PROJETO IAC2

echo "Atualizando sistema..."

apt-get update
apt-get upgrade -y

echo "Servidor atualizado..."

echo "Instalando servidor web (apache2)..."

apt-get install apache2 -y

echo "Instalando unzip..."

apt-get install unzip -y

echo "Baixando aplicacao web..."

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

echo "Copiando arquivos para diretorio web..."

cd linux-site-dio-main

cp -R * /var/www/html/


