#!/bin/bash

opkg update

opkg install php7 php7-mod-curl php7-mod-json php7-fpm php7-mod-sqlite3 nginx unzip

cd /root/portals

# Changed May 2021 due to the fact that kbeflo seems to have moved his Github to "kleo" (even though it's still possible to use the kbeflo download URL)
#wget https://github.com/kbeflo/evilportals/archive/master.zip -O /root/portals/master.zip
wget https://github.com/kleo/evilportals/archive/refs/heads/master.zip -O /root/portals/master.zip

unzip /root/portals/master.zip

mv /root/portals/evilportals-master/portals/* /root/portals/.

rm -r /root/portals/evilportals-master

rm master.zip

cp /pineapple/ui/modules/evilportal/assets/configs/php.ini /etc/php.ini

cp /pineapple/ui/modules/evilportal/assets/configs/php7-fpm /etc/init.d/php7-fpm

cp /pineapple/ui/modules/evilportal/assets/configs/nginx.conf /etc/nginx/nginx.conf

cp /pineapple/ui/modules/evilportal/assets/configs/php7-fpm.conf /etc/php7-fpm.conf

cp /pineapple/ui/modules/evilportal/assets/configs/www.conf /etc/php7-fpm.d/www.conf

echo "Done! Reboot the Pineapple manually!"
