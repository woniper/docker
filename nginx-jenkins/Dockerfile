FROM ubuntu:14.04
MAINTAINER woniper <leekw3747@gmail.com>

RUN apt-get update && apt-get install -y nginx && rm -rf /var/lib/apt/lists/*
RUN chown -R www-data:www-data /var/lib/nginx

COPY conf/jenkins.conf  /etc/nginx/conf.d/jenkins.conf
COPY conf/nginx.conf    /etc/nginx/nginx.conf

VOLUME ["/data", "/etc/nginx", "/var/log/nginx"]

WORKDIR /etc/nginx

CMD ["nginx"]

EXPOSE 80
EXPOSE 443
