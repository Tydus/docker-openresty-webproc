FROM openresty/openresty:xenial

RUN curl -sL https://github.com/jpillora/webproc/releases/download/0.2.2/webproc_linux_amd64.gz | gzip -d - > /usr/local/bin/webproc && chmod 755 /usr/local/bin/webproc

CMD ["/usr/local/bin/webproc", "--config", "/etc/nginx/conf.d/default.conf,/usr/local/openresty/nginx/conf/nginx.conf", "--", "/usr/local/openresty/bin/openresty", "-g", "daemon off;"]

