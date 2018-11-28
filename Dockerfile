FROM circleci/php:7.1-browsers

RUN sudo apt install -y libfreetype6-dev libicu-dev libjpeg62-turbo-dev libmcrypt-dev libpng12-dev libxslt1-dev zip libxml2-dev
RUN sudo -E docker-php-ext-install bcmath gd intl mbstring mcrypt opcache pdo_mysql soap xsl zip

RUN sudo wget http://cs.sensiolabs.org/download/php-cs-fixer-v2.phar -O php-cs-fixer
RUN sudo chmod a+x php-cs-fixer
RUN sudo mv php-cs-fixer /usr/local/bin/php-cs-fixer
