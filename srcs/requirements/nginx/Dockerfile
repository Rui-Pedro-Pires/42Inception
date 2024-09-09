FROM debian:bullseye

RUN apt update && apt install -y nginx openssl

RUN mkdir -p /etc/nginx/ssl && \
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/nginx/ssl/nginx.key \
    -out /etc/nginx/ssl/nginx.crt \
    -subj "/CN=localhost"

COPY ./conf/nginx.conf /etc/nginx/nginx.conf
COPY ./conf/nginx.conf /etc/nginx/sites-available/default

EXPOSE 80
EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]