#!/bin/bash
mysql -u root -p${MYSQL_ROOT_PASSWORD} ${MYSQL_DATABASE} < /vagrant/mysql/sakila-schema.sql
mysql -u root -p${MYSQL_ROOT_PASSWORD} ${MYSQL_DATABASE} < /vagrant/mysql/sakila-data.sql
echo "Sakila database setup completed!"
