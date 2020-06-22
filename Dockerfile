FROM registry.redhat.io/rhel8/php-73
ENTRYPOINT [ "/usr/sbin/httpd", "-D", "FOREGROUND" ]
