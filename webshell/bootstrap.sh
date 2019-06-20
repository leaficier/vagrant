#!/usr/bin/env bash

apt-get update
apt-get install -y apache2 php5 libapache2-mod-php5 unzip
apt-get autoremove -y

if [ -d /tmp/webconsole ]; then
	rm -rf /tmp/webconsole
fi

if [ -d /var/www/html/webconsole ]; then
	rm -rf /var/www/html/webconsole
fi


mkdir /tmp/webconsole
wget -P /tmp/webconsole https://github.com/nickola/web-console/releases/download/v0.9.7/webconsole-0.9.7.zip

unzip /tmp/webconsole/webconsole-0.9.7.zip -d /var/www/html/

sed -i "14s/.*/\$USER = \'web\'\;/" /var/www/html/webconsole/webconsole.php
sed -i "15s/.*/\$PASSWORD = \'console\'\;/"  /var/www/html/webconsole/webconsole.php

service apache2 restart
