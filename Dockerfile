FROM ubuntu:18.04
MAINTAINER Lyes AMEDDAH
RUN apt-get update -y
RUN apt-get install -y nginx
EXPOSE 80
ADD static-website/ /var/www/html
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]