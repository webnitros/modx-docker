ARG PHP_VERSION=7.4
FROM php:${PHP_VERSION}-fpm-alpine AS base

ARG PHP_VERSION

# Install Supervisor
RUN apk add --no-cache supervisor

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

RUN apk update && apk upgrade
RUN apk add build-base autoconf libzip-dev libpng-dev libjpeg-turbo-dev libwebp-dev bash mariadb-client mc nano icu-dev

# Install cron
RUN apk add --no-cache dcron

RUN apk add --no-cache supervisor
COPY ./docker/php/supervisor/supervisord.conf /etc/supervisord.conf
RUN mkdir -p /var/log/supervisor

COPY ./docker/php/crontabs/cron /etc/cron.d/cron
RUN chmod 0644 /etc/cron.d/cron
COPY ./docker/php/crontabs/crond.sh /root/crond.sh
RUN chmod +x /root/crond.sh

RUN touch /var/log/cron.log

#RUN pecl install xdebug-3.1.0
RUN docker-php-ext-configure gd --with-jpeg --with-webp && docker-php-ext-install gd
RUN docker-php-ext-install exif
RUN docker-php-ext-install zip
RUN docker-php-ext-install bz2
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-configure intl
RUN docker-php-ext-install intl
RUN docker-php-ext-enable intl

RUN apk add --no-cache freetype libpng libjpeg-turbo freetype-dev libpng-dev libjpeg-turbo-dev && \
    docker-php-ext-configure gd --with-freetype --with-jpeg && \
    docker-php-ext-install -j$(nproc) gd

# supervisor
COPY ./docker/php/supervisor/supervisord.conf /etc/supervisord.conf
RUN mkdir -p /var/log/supervisor

RUN composer global config minimum-stability alpha
ENV PATH=/root/.composer/vendor/bin:$PATH

USER www-data

RUN composer global require modmore/gitify:^2
ENV PATH="/home/www-data/.composer/vendor/bin:${PATH}"

USER root

COPY ./docker/php/php.ini-production /usr/local/etc/php/php.ini

RUN apk add --no-cache mariadb-connector-c

########################
####### development
########################
FROM base AS development

####### ////////////// the end

########################
####### deploy
########################
FROM base AS deploy

COPY --chown=www-data:www-data . /var/www/html

USER www-data

RUN composer install --no-dev
