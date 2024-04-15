include .env

gitify-installer:
	docker compose exec app bash -c 'php ./docker/app/scripts/installer.php'

gitify-config:
	docker compose exec app bash -c 'php ./docker/app/scripts/config.php'

composer-autoload:
	docker compose exec app bash -c 'rm -rf core/vendor/*'
	docker compose exec app bash -c 'php ./docker/app/scripts/composer-autoload.php --version=${MODX_VERSION}'

uninstall:
	docker compose exec app bash -c 'rm -rf core'
	docker compose exec app bash -c 'rm -rf public/*'
	docker compose exec app bash -c 'rm -rf vendor'
	docker compose exec app bash -c 'rm -f composer.json'
	docker compose exec app bash -c 'rm -f composer.lock'
	docker compose exec app bash -c 'mkdir -p /var/www/html/public'
	docker compose exec app bash -c 'touch /var/www/html/public/.gitkeep'

gitify-download:
	docker compose exec app bash -c 'gitify modx:download'

# modx < 3.0
gitify-package-install:
	docker compose exec app bash -c 'gitify package:install --all'

gitify-install:
	@make uninstall
	@make gitify-installer
	docker compose exec app bash -c 'cd /var/www/html/public && gitify modx:install --config=/var/www/html/config.xml ${MODX_VERSION}'
	docker compose exec app bash -c 'rm -f /var/www/html/config.xml'
	docker compose exec app bash -c 'rm -f /var/www/html/public/config.xml'
	@make composer-autoload
	@make gitify-config

help:
	@echo ""
	@echo "usage: make COMMAND:"
	@echo ""
	@echo "Commands:"
	@echo "  install        Сборка контенера и установка всех зависимостей s"

install:
	@make build
	@make up
	@make gitify-install
	@make composer
	@make cache-clear
	@make user-info

user-info:
	@echo "##########"
	@echo "Admin login: ${CMS_ADMIN_USERNAME}"
	@echo "Admin password: ${CMS_ADMIN_PASSWORD}"
	@echo "Manager url: http://127.0.0.1:${NGINX_PORT}/manager/"
	@echo "Phpmyadmin url: http://127.0.0.1:${NGINX_PORT}/phpmyadmin/"
	@echo "##########"

up:
	docker compose up -d
build:
	docker compose build
remake:
	@make destroy
	@make install
stop:
	docker compose stop
down:
	docker compose down --remove-orphans
restart:
	@make down
	@make up
destroy:
	docker compose down --volumes --remove-orphans
destroy-all:
	docker compose down --rmi all --volumes --remove-orphans
ps:
	docker compose ps
logs:
	docker compose logs
mysql:
	docker compose exec mysql bash
app:
	docker compose exec app bash
rollback:
	docker compose exec app composer rollback
composer:
	docker compose exec app composer install
cache-clear:
	docker compose exec app bash -c 'rm -rf core/cache'


# Extras
package-build:
	docker compose exec app bash -c "export PACKAGE_ENCRYPTION=False && php Extras/mspre/_build/build.php"

package-build-encryption:
	docker compose exec app bash -c "php Extras/mspre/_build/build.php"

package-target-clear:
	docker compose exec app bash -c 'rm -rf target'

package-deploy:
	@make package-target-clear
	@make package-build
	@make package-build-encryption

checking-add-ons:
	docker compose exec app bash -c "php ./docker/app/scripts/checking-add-ons.php"

mysqldump:
	docker compose exec mysql bash -c "mysqldump -h 127.0.0.1 -u root -p${MYSQL_ROOT_PASSWORD} --force ${MYSQL_DATABASE} > /docker-entrypoint-initdb.d/dump.sql"


build-deploy:
	@$(MAKE) build APP_BUILD_TARGET=deploy

build-mysql-run:
	@make mysqldump
	sh ./docker/mysql/build-mysql.sh


test:
	docker compose -f docker-compose.test.yml up

