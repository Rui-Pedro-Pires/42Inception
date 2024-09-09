FROM debian:bullseye

RUN apt-get update && \
    apt-get upgrade -y && \ 
    apt-get install nginx -y

COPY ./conf/nginx.conf  /etc/nginx/conf.d/default.conf

RUN mkdir -p /var/www/html && \
    chown -R www-data:www-data /var/www/html && \
    chmod -R 755 /var/www/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]