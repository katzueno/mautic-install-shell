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

# VARIABLES
# ----------

DOWNLOAD_URL="https://github.com/mautic/mautic/archive/1.4.1.zip"
DESTINATION="/home/ubuntu/workspace"
VERSION='1.4.1'
INSTALL_PHPMYADMIN="yes"

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
