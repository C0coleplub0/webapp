FROM ubuntu:18.04

LABEL org.opencontainers.image.authors="c.hortier@attineos-infra.com"

RUN apt-get update -y 

RUN apt-get install -y nginx git

RUN rm -Rf /var/www/*

RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html

EXPOSE 80

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
