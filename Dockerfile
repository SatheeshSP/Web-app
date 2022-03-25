FROM ubuntu:20.04
MAINTAINER satheesh
USER root
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y
RUN apt-get install apache2 -y
WORKDIR /var/www/html
RUN rm -rf index.html
RUN echo "This is the Simple web Application" > index.html
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]