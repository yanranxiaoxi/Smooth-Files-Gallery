FROM docker.io/library/php:8-apache
WORKDIR /var/www/html
COPY index.php .
COPY --chmod=666 _files ./_files
COPY css ./css
COPY js ./js
COPY lang ./lang
COPY _files/assets ./_files/assets
COPY _files/config/config.docker.php ./_files/config/config.php
ADD --chmod=0755 https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/
RUN install-php-extensions gd exif zip imagick
