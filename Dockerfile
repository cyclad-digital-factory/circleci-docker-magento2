FROM circleci/php:7.1-browsers

RUN sudo apt install -y libfreetype6-dev libicu-dev libjpeg62-turbo-dev libmcrypt-dev libpng12-dev libxslt1-dev zip
RUN sudo docker-php-ext-install bcmath gd intl mbstring mcrypt opcache pdo_mysql soap xsl zip