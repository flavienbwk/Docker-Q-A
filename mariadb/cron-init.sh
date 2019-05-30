#!/bin/bash

apt-get update
apt-get -y install cron

chmod 0644 /etc/cron.d/cron-backups
touch /var/log/cron.log

cron && tail -f /v
