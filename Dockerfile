FROM ubuntu
MAINTAINER Lyes AMEDDAH
RUN apt-get update -y
RUN apt-get install -y nginx
EXPOSE 80
ADD static-website-example/ /var/www/html
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off"]