#!/bin/bash
#
# Mautic Installation Shell to Cloud9:
# ----------
# Version 0.1
# By katzueno
# INSTRUCTION:
# ----------
# https://github.com/katzueno/mautic-install-shell
# USE IT AT YOUR OWN RISK!
# LICENSE: MIT License




# VARIABLES
# ----------

DOWNLOAD_URL="https://github.com/mautic/mautic/archive/2.1.1.zip"
DESTINATION="/home/ubuntu/workspace"
VERSION="2.1.1"
INSTALL_PHPMYADMIN="yes"

# INSTALL PHP7
# ----------
cd ${DESTINATION}
sudo apt-get update
sudo apt-get install libmcrypt-dev
curl -L -O https://github.com/phpbrew/phpbrew/raw/master/phpbrew
chmod +x phpbrew
sudo mv phpbrew /usr/local/bin/
phpbrew init
[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc
phpbrew lookup-prefix ubuntu
phpbrew install 7.0.11 +default +mysql +pdo +fpm +opcache +intl +curl +mcrypt +gd +iconv
phpbrew switch php-7.0.11
phpbrew use php-7.0.11

# EXEC
# ----------
cd ${DESTINATION}
if [ "$INSTALL_PHPMYADMIN" = "yes" ]; then
    phpmyadmin-ctl install
fi
wget ${DOWNLOAD_URL}
unzip ${VERSION}.zip
mv mautic-${VERSION}/* ./
rm -rf mautic-${VERSION}
composer install
