FROM registry.access.redhat.com/ubi8/s2i-base

EXPOSE 80
#EXPOSE 8080
#EXPOSE 8443

# Description
# This image provides an Apache 2.4 + PHP 7.3 environment for running PHP applications.
# Exposed ports:
# * 8080 - alternative port for http

ENV PHP_VERSION=7.3 \
    PHP_VER_SHORT=73 \
    NAME=php

# Install Apache httpd and PHP
RUN yum -y module enable php:$PHP_VERSION && \
    INSTALL_PKGS="php php-mysqlnd php-pgsql php-bcmath \
                  php-gd php-intl php-json php-ldap php-mbstring php-pdo \
                  php-process php-soap php-opcache php-xml \
                  php-gmp php-pecl-apcu mod_ssl hostname" && \
    yum install -y --setopt=tsflags=nodocs $INSTALL_PKGS && \
    yum reinstall -y tzdata && \
    rpm -V $INSTALL_PKGS && \
    yum -y clean all --enablerepo='*'
    
USER default

ENTRYPOINT [ "/usr/sbin/httpd", "-D", "FOREGROUND" ]
