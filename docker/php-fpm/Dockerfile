FROM php:8.0-fpm-alpine

# Install Composer
RUN wget https://getcomposer.org/installer -O - -q | php -- --version=2.0.12 --install-dir=/bin --filename=composer --quiet

ENV COMPOSER_ALLOW_SUPERUSER 1

RUN docker-php-ext-install pdo pdo_mysql mysqli

WORKDIR /var/www
