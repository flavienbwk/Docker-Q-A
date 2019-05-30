FROM mariadb:10.4

COPY database.sql /docker-entrypoint-initdb.d

ADD cron-backups /etc/cron.d/cron-backups
RUN chmod 0644 /etc/cron.d/cron-backups
RUN touch /var/log/cron.log
RUN apt-get update
RUN apt-get -y install cron

EXPOSE 3306
CMD cron && tail -f /var/log/cron.log && mysqld