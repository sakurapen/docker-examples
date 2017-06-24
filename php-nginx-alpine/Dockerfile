FROM alpine:3.4
LABEL maintainer "sakurapen@gmail.com"

RUN apk --no-cache add nginx supervisor php5-fpm php5-mcrypt php5-soap php5-openssl php5-gmp php5-pdo_odbc php5-json php5-dom php5-pdo php5-zip php5-mysql php5-mysqli php5-sqlite3 php5-apcu php5-pdo_pgsql php5-bcmath php5-gd php5-xcache php5-odbc php5-pdo_mysql php5-pdo_sqlite php5-gettext php5-xmlreader php5-xmlrpc php5-bz2 php5-memcache php5-mssql php5-iconv php5-pdo_dblib php5-curl php5-ctype

RUN touch /var/log/nginx/error.log
RUN touch /var/log/nginx/access.log

COPY config/nginx.conf /etc/nginx/nginx.conf
COPY config/supervisord.conf /etc/supervisord.conf
COPY config/run.sh /tmp

COPY html /var/www/html

RUN chmod +x /tmp/run.sh && ./tmp/run.sh

EXPOSE 80
CMD ["/usr/bin/supervisord"]