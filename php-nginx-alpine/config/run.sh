#!/bin/sh
adduser -D -u 1000 -g 'www' www
chown -R www:www /var/www/html
chown -R www:www /var/lib/nginx