# docker-laravel-dev
Build a opensuse image for development laravel development.  
  
This image is based on [mengzyou/docker-apache-php](https://registry.hub.docker.com/u/mengzyou/docker-apache-php/) image.

### PHP Version
`5.6.9`

### Composer Version
`Composer version 1.0-dev (0ec86be5e988261e8b625ac696d566afa2c35faf) 2015-05-31 11:54:08`

#### Packages
- php5-ctype
- php5-gd
- php5-json
- php5-mbstring
- php5-mcrypt
- php5-mysql
- php5-openssl
- php5-phar
- php5-tokenizer

#### Usage
Go to your laravel project directory, then run:  
```
docker run -p 80:80 -v `pwd`:/var/www -d mengzyou/docker-laravel-dev  
```
  
*NOTE:* Ensure the write permisions on `storage` directory of your laravel project.
