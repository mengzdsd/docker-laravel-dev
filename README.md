# docker-laravel-dev
Build a opensuse image for development laravel development.  
  
This image is based on [mengzyou/docker-apache-php](https://registry.hub.docker.com/u/mengzyou/docker-apache-php/) image.

### PHP Version
`5.6.9`

### Composer Version
`Composer version 1.0-dev (9f6fdfd703f433bd0777fd89fb4684908a6c4f06) 2015-09-07 16:55:30`

#### Packages
- php5-mcrypt
- php5-pdo
- php5-openssl
- php5-phar

#### Usage
Go to your laravel project directory, then run:  
```
docker run -p 80:80 -v `pwd`:/srv/laravel -d mengzyou/docker-laravel-dev  
```
  
*NOTE:* Ensure the write permisions on `storage` directory of your laravel project.
