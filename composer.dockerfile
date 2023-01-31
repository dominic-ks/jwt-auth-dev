FROM php:7.4-cli
COPY --from=composer:1.10.26 /usr/bin/composer /usr/bin/composer
WORKDIR './app'
RUN apt-get -y update
RUN apt-get -y install git && apt -y install zip