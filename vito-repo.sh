#!/bin/bash
#Simple, muy simple script para habilitar los repositorios de VitoMate
if [ $(whoami) = "root" ]; then
touch /etc/apt/sources.list.d/vitomate.list
echo "deb http://104.131.101.90/vitomate vitomate main" >> /etc/apt/sources.list.d/vitomate.list
wget http://104.131.101.90/vitomate/vitomate.asc
apt-key add vitomate.asc
rm vitomate.asc
exit 1
else
echo Es necesario ejecutar este programa como ROOT o usando sudo
exit 1
fi