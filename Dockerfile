# This is a Dockerfile for build a opensuse image for development based on laravel
FROM mengzyou/docker-apache-php
MAINTAINER Mengz You <you.mengz@yahoo.com>

# ENV

# Add repo
RUN zypper ar -f -r http://download.opensuse.org/repositories/server:/php:/extensions/openSUSE_13.2/server:php:extensions.repo

# Refresh repositories and install packages
RUN zypper -n --gpg-auto-import-keys ref \
  && zypper -n in --no-recommends curl php5-mcrypt php5-openssl php5-mbstring php5-tokenizer php5-json php5-mysql php5-gd php5-phar php5-ctype \
  && zypper clean -a

# Open apache rewrite module
RUN a2enmod rewrite

#
RUN rm -f /etc/apache2/default-server.conf \
  && mkdir -p /var/www \
  && chown -R wwwrun:www /var/www

ADD conf/default-server.conf /etc/apache2/default-server.conf

VOLUME ["/var/www"]

# Install php-composer
COPY tools/composer /usr/local/bin/

ENTRYPOINT []

# Expose ports
EXPOSE 80

# Start apache
CMD ["start_apache2","-DFOREGROUND"]
