FROM php:8.2-cli

# Install dependencies
RUN apt-get update && apt-get install -y \
    git unzip zip curl libzip-dev libonig-dev libxml2-dev \
    libicu-dev libcurl4-openssl-dev libpq-dev libmcrypt-dev \
    libsqlite3-dev sqlite3 mariadb-client \
    && docker-php-ext-install pdo pdo_mysql pdo_sqlite intl zip mbstring xml opcache

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Install Symfony CLI
RUN curl -sS https://get.symfony.com/cli/installer | bash \
    && mv /root/.symfony*/bin/symfony /usr/local/bin/symfony

WORKDIR /var/www/html
