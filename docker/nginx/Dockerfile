ARG NGINX_VERSION=1.22

FROM nginx:1.22 as base

# Конфигурация новая
COPY ./docker/nginx/templates /etc/nginx/templates

########################
####### development
########################
FROM base AS development

####### ////////////// the end

########################
####### deploy
########################
FROM base AS deploy

# Забрасываем app в nginx иначе не будет отрабатывать статика
COPY --chown=www-data:www-data . /var/www/html

CMD ["nginx", "-g", "daemon off;"]
