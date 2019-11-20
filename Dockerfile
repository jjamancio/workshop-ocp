FROM php:7.0-cli
COPY . /opt/app-root/src
WORKDIR /opt/app-root/src
ENV PATH=/opt/app-root/src/bin:/opt/app-root/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/rh/rh-php70/root/usr/bin
ENV container=oci
ENV SUMMARY=Platform for building and running PHP 7.0 applications
ENV DESCRIPTION=PHP 7.0 available as container is a base platform for building and running various PHP 7.0 applications and frameworks. PHP is an HTML-embedded scripting language. PHP attempts to make it easy for developers to write dynamically generated web pages. PHP also offers built-in database integration for several commercial and non-commercial database management systems, so writing a database-enabled webpage with PHP is fairly simple. The most common use of PHP coding is probably as a replacement for CGI scripts.
ENV ENVSTI_SCRIPTS_URL=image:///usr/libexec/s2i
ENV STI_SCRIPTS_PATH=/usr/libexec/s2i
ENV APP_ROOT=/opt/app-root
ENV HOME=/opt/app-root/src
ENV PLATFORM=el7
ENV BASH_ENV=/opt/app-root/etc/scl_enable
ENV ENV=/opt/app-root/etc/scl_enable
ENV PROMPT_COMMAND=. /opt/app-root/etc/scl_enable
ENV NODEJS_SCL=rh-nodejs10
ENV PHP_VERSION=7.0
ENV PHP_VER_SHORT=70
ENV NAME=php
ENV PHP_CONTAINER_SCRIPTS_PATH=/usr/share/container-scripts/php/
ENV APP_DATA=/opt/app-root/src
ENV PHP_DEFAULT_INCLUDE_PATH=/opt/rh/rh-php70/root/usr/share/pear
ENV PHP_SYSCONF_PATH=/etc/opt/rh/rh-php70
ENV PHP_HTTPD_CONF_FILE=rh-php70-php.conf
ENV HTTPD_CONFIGURATION_PATH=/opt/app-root/etc/conf.d
ENV HTTPD_MAIN_CONF_PATH=/etc/httpd/conf
ENV HTTPD_MAIN_CONF_D_PATH=/etc/httpd/conf.d
ENV HTTPD_VAR_RUN=/var/run/httpd
ENV HTTPD_DATA_PATH=/var/www
ENV HTTPD_DATA_ORIG_PATH=/opt/rh/httpd24/root/var/www
ENV HTTPD_VAR_PATH=/opt/rh/httpd24/root/var
ENV SCL_ENABLED=rh-php70
CMD [ "php", "./your-script.php" ]

USER 1001

EXPOSE 8080/tcp
