FROM php:8.3-apache

RUN apt install git
RUN docker-php-ext-install pdo pdo_mysql
RUN git clone https://github.com/LoveCards/LoveCardsV2.git /var/www/html --depth=1 && cd /var/www/html && rm -rf .gitignore .github .dev ToDo.md .git DOCKER_ENV docker_tag output.log composer.json composer.lock script lock.txt upload.md test.env think