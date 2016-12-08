#!/bin/bash
cd /var/www/html
bin/console doctrine:schema:update --force
composer install
