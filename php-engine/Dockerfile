FROM php:8.2-apache

RUN apt-get update && apt-get upgrade -y
RUN apt-get install libpq-dev -y
RUN docker-php-ext-install pdo_pgsql

COPY ../src/. /var/www/html
WORKDIR /var/www/html

RUN chown -R www-data:www-data /var/www/html && chmod -R 766 /var/www/html

RUN /usr/sbin/a2enmod rewrite

COPY php-engine/configs/default.conf /etc/apache2/sites-available/000-default.conf

EXPOSE 80
