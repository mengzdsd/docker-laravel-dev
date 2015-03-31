# docker-laravel-dev
Build a opensuse image for development laravel development.  
  
This image is based on [mengzyou/docker-apache-php](https://registry.hub.docker.com/u/mengzyou/docker-apache-php/) image.

#### Packages
- libX11-data-1.6.2-5.1.2  
- libXau6-1.0.8-5.1.2  
- libmcrypt-2.5.8-116.1.2  
- libX11-6-1.6.2-5.1.2  
- libXpm4-3.5.11-4.1.2  
- curl-7.40.0-4.1  
- libjpeg8-8.0.2-30.5.1  
- libpng16-16-1.6.13-2.4.1  
- php5-ctype-5.6.6-273.3  
- php5-json-5.6.6-273.3  
- php5-mbstring-5.6.6-273.3  
- php5-openssl-5.6.6-273.3  
- php5-pdo-5.6.6-273.3  
- php5-phar-5.6.6-273.3  
- php5-tokenizer-5.6.6-273.3  
- php5-mcrypt-5.6.6-273.3  
- php5-mysql-5.6.6-273.3  
- libfreetype6-2.5.3-2.1.3  
- php5-gd-5.6.6-273.3  

#### Usage
Go to your laravel project directory, then run:  
```shell
docker run -p 80:80 -v `pwd`:/var/www -d mengzyou/docker-laravel-dev  
```
  
*NOTE:* Ensure the write permisions on `storage` directory of your laravel project.
