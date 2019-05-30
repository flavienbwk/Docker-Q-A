FROM nginx

RUN rm /etc/nginx/conf.d/default.conf

RUN apt-get update -y
RUN apt-get install curl -y
RUN curl -sLo /usr/local/bin/ep https://github.com/kreuzwerker/envplate/releases/download/v0.0.8/ep-linux && chmod +x /usr/local/bin/ep


COPY question2answer.nginx.conf /etc/nginx/conf.d/question2answer.nginx.conf

CMD sed -i "s/{MYSQL_DATABASE}/"${MYSQL_DATABASE}"/g"  /question2answer/qa-config.php && \ 
    sed -i "s/{MYSQL_USER}/"${MYSQL_USER}"/g" /question2answer/qa-config.php && \
    sed -i "s/{MYSQL_PASSWORD}/"${MYSQL_PASSWORD}"/g"  /question2answer/qa-config.php && \
    /usr/local/bin/ep -v /etc/nginx/conf.d/*.conf & nginx -g "daemon off;"