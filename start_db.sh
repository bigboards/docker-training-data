#!/bin/bash

set -e
set -x

# Start the MySQL daemon in the background.
/entrypoint.sh

# Wait for MySQL daemon to start
until mysqladmin ping &>/dev/null; do
  echo -n "."; sleep 1
done

if [[ ! -z "`mysql -qfsBe "SELECT SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME='online_sales'" 2>&1`" ]];
then
  echo "DATABASE online_sales ALREADY EXISTS"
else
  echo "DATABASE online_sales DOES NOT EXIST"

  # create the default database from the ADDed file.
  mysql < /opt/training-src-data/scripts/vmart_schema_define.sql
  mysql < /opt/training-src-data/scripts/vmart_data_load.sql
fi

