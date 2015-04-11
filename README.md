# docker-laravel-dev
Build a opensuse image for development laravel development.  
  
This image is based on [mengzyou/docker-apache-php](https://registry.hub.docker.com/u/mengzyou/docker-apache-php/) image.

### PHP Version
5.6

#### Packages
- libX11-data
- libXau6
- libmcrypt
- libX11
- libXpm
- curl
- libjpeg8
- libpng16
- php5-ctype
- php5-json
- php5-mbstring
- php5-openssl
- php5-pdo
- php5-phar
- php5-tokenizer
- php5-mcrypt
- php5-mysql
- libfreetype6
- php5-gd

#### Usage
Go to your laravel project directory, then run:  
```shell
docker run -p 80:80 -v `pwd`:/var/www -d mengzyou/docker-laravel-dev  
```
  
*NOTE:* Ensure the write permisions on `storage` directory of your laravel project.
