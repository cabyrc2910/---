FROM php:7.4-fpm

RUN apt-get update && apt-get install -y cron git-core jq unzip vim zip \
  libjpeg-dev libpng-dev libpq-dev libsqlite3-dev libwebp-dev libzip-dev && \
  rm -rf /var/lib/apt/lists/* && \
  docker-php-ext-configure zip --with-zip && \
  docker-php-ext-configure gd --with-jpeg --with-webp && \
  docker-php-ext-install exif gd mysqli opcache pdo_pgsql pdo_mysql zip

RUN mkdir /var/log/php \
    && chmod 777 /var/log/php \
    && touch /var/log/php/php-fpm-errors.log \
    && chgrp www-data /var/log/php/php-fpm-errors.log \
    && chown www-data /var/log/php/php-fpm-errors.log \
    && chmod 777 /var/log/php/php-fpm-errors.log

ADD ./docker/php-fpm/php.ini /usr/local/etc/php/php.ini

WORKDIR /var/www