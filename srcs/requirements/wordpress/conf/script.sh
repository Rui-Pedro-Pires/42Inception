#!/bin/bash

cd /var/www/html
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
sleep 5
./wp-cli.phar core download --allow-root
./wp-cli.phar config create --dbname=wordpress --dbuser=ruiolive --dbpass=12345678 --dbhost=mariadb --allow-root
./wp-cli.phar core install --url=localhost --title=inception --admin_user=admin --admin_password=admin --admin_email=admin@admin.com --allow-root
./wp-cli.phar user create gues guest@guest.com --role=subscriber --user_pass=guest123 --allow-rootphp
echo "define('FS_METHOD', 'direct');" >> /var/www/html/wp-config.php
php-fpm7.4 -F