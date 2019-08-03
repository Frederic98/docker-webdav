FROM httpd
MAINTAINER Frederic98

COPY adduser addgroup deluser delgroup import export /usr/local/bin/
COPY httpd.conf $HTTPD_PREFIX/conf/

RUN mkdir -p /media/conf.d && \
    mkdir -p /media/htdocs/user && \
    rm -rf $HTTPD_PREFIX/conf.d && \
    rm -rf $HTTPD_PREFIX/htdocs && \
    ln -s /media/conf.d $HTTPD_PREFIX/conf.d && \
    ln -s /media/htdocs $HTTPD_PREFIX/htdocs
