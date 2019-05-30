#!/bin/bash

if [ ! -d /question2answer ]
then
    exit 1
fi

sed -i "s/define\('QA_MYSQL_HOSTNAME'\, '127\.0\.0\.1'\)/define('QA_MYSQL_HOSTNAME', 'mysql')/g" /question2answer/qa-config.php
sed -i "s/define\('QA_MYSQL_USERNAME'\, 'your-mysql-username'\)/define('QA_MYSQL_USERNAME', '${MYSQL_USER}')/g" /question2answer/qa-config.php
sed -i "s/define\('QA_MYSQL_PASSWORD'\, 'your-mysql-password'\)/define('QA_MYSQL_PASSWORD', '${MYSQL_PASSWORD}')/g" /question2answer/qa-config.php
sed -i "s/define\('QA_MYSQL_DATABASE'\, 'your-mysql-db-name'\)/define('QA_MYSQL_DATABASE', '${MYSQL_DATABASE}')/g" /question2answer/qa-config.php