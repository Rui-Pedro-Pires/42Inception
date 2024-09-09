#!/bin/bash

cat <<EOF > /etc/mysql/init.sql
CREATE DATABASE ${MARIADB_DATABASE};
CREATE USER '${MARIADB_USER}'@'%' IDENTIFIED BY '${MARIADB_PASSWORD}';
GRANT ALL PRIVILEGES ON ${MARIADB_DATABASE}.* TO '${MARIADB_USER}'@'%';
FLUSH PRIVILEGES;
EOF

mysql_install_db

mysqld --init-file=/etc/mysql/init.sql