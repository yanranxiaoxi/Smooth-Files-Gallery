FROM docker.io/library/php:8-apache-trixie
WORKDIR /var/www/html
COPY index.docker.php ./index.php
COPY _files ./_files
COPY css ./css
COPY js ./js
COPY lang ./lang
COPY _files/assets ./_files/assets
ADD --chmod=0755 https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/
RUN mkdir /var/www/files/ && chmod 0777 -R /var/www/files/ && chmod 0777 -R /var/www/html/_files/ && install-php-extensions gd exif zip && echo "deb http://www.deb-multimedia.org trixie main" >>/etc/apt/sources.list && apt-get update -oAcquire::AllowInsecureRepositories=true && apt-get install --allow-unauthenticated -y deb-multimedia-keyring && apt-get install --allow-unauthenticated -y ffmpeg imagemagick && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
