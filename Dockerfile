FROM php:8.1-apache

# Install mysqli and dependencies
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libzip-dev \
    && docker-php-ext-install mysqli \
    && docker-php-ext-enable mysqli

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Copy app files into web root
COPY . /var/www/html/

EXPOSE 80
CMD ["apache2-foreground"]
