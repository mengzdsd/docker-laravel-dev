# This is a Dockerfile for build a opensuse image for development based on laravel
FROM mengzyou/docker-apache-php:latest
MAINTAINER Mengz You <you.mengz@yahoo.com>

# Add repo, Refresh repositories and install packages
RUN zypper -q ar -f -r http://download.opensuse.org/repositories/server:/php:/extensions/openSUSE_13.2/server:php:extensions.repo \
  && zypper -qn --gpg-auto-import-keys ref \
  && zypper -qn in -l --no-recommends curl php5-mcrypt php5-openssl php5-mbstring php5-tokenizer php5-json php5-mysql php5-gd php5-phar php5-ctype \
  && zypper clean -a

# Install php-composer
COPY tools/composer /usr/local/bin/

# Open apache rewrite module
RUN a2enmod rewrite \
  && rm -f /etc/apache2/default-server.conf /etc/apache2/httpd.conf \
  && mkdir -p /var/www \
  && chown -R wwwrun:www /var/www

ADD conf/default-server.conf /etc/apache2/default-server.conf
ADD conf/httpd.conf /etc/apache2/httpd.conf

VOLUME ["/var/www"]

ENTRYPOINT ["start_apache2"]

# Expose ports
EXPOSE 80

# Start apache
CMD ["-DFOREGROUND"]
