FROM php:7.0-apache
RUN apt-get -qq update
RUN apt-get install -y apt-utils net-tools vim wget libfreetype6-dev libjpeg62-turbo-dev libmcrypt-dev libpng12-dev libxml2-dev curl libcurl3 libcurl3-dev
RUN a2enmod rewrite
RUN a2enmod ssl
RUN docker-php-ext-install pdo_mysql gd mcrypt mysqli zip soap calendar curl exif gettext sockets opcache
