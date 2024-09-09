FROM debian:bullseye

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
    curl \
    php7.4-fpm \
    php7.4-mysqli

RUN mkdir -p /run/php && chown -R www-data:www-data /run/php
RUN mkdir -p /var/www/html && chown -R www-data:www-data /var/www/html
RUN mkdir -p /var/www/html/wp-content/uploads && chown -R www-data:www-data /var/www/html/wp-content/uploads
COPY ./conf/script.sh .
COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d/
RUN chmod +x script.sh

ENTRYPOINT ["./script.sh"]