FROM webnitros/php-modx-composer-gitify:latest as base

USER root

COPY ./docker/app/php.ini-production /usr/local/etc/php/php.ini

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
