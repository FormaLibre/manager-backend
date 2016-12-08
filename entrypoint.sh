#!/bin/bash
cd /var/www/html
bin/console doctrine:schema:update --force
composer install
chown -R www-data:www-data var/cache/ var/logs/ var/sessions/

exec "$@"
