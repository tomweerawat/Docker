#!/bin/sh
# MySQL start script

sleep 10;

mysql --host=localhost --port=3306 --user=root --password=w@rp -e "CREATE DATABASE smee"
mysql --host=localhost --port=3306 --user=root --password=w@rp smee < /smee.sql

mysql --host=localhost --port=3306 --user=root --password=w@rp -e "update mysql.user set Host = '%'"
mysql --host=localhost --port=3306 --user=root --password=w@rp -e "FLUSH PRIVILEGES"