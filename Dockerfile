# COMPOSE_DOCKER_CLI_BUILD=1 DOCKER_BUILDKIT=1 docker-compose --verbose build

FROM php:7.4-apache
RUN a2enmod rewrite
RUN docker-php-ext-install mysqli
RUN docker-php-ext-install pdo_mysql

RUN apt-get update

RUN apt-get install -y \
        libzip-dev \
        libpng-dev
        
RUN docker-php-ext-install zip        

RUN apt-get install -y \
        zlib1g-dev
        
RUN docker-php-ext-install gd        
        
RUN apt-get install -y \
         libicu-dev \
         g++
         
RUN docker-php-ext-install intl         
         
RUN apt-get install -y \
        libxml2-dev
        
RUN docker-php-ext-install xmlrpc
RUN docker-php-ext-install soap
        
RUN apt-get install -y \
        libsodium-dev

RUN docker-php-ext-install sodium

RUN docker-php-ext-configure opcache --enable-opcache \
    && docker-php-ext-install opcache