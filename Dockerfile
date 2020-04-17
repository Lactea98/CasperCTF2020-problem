FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install apache2 php -y

COPY . /var/www/html

EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
