#!/bin/bash

cat <<NGINX | tee /etc/nginx/sites-available/dev.dollarbutton.net

server {
        listen   80;
        server_name  dev.dollarbutton.net stu.dollarbutton.net;

        access_log  /var/log/nginx/stu.dollarbutton.access.log;

        location / {
                root   /var/www/dev.dollarbutton.net;
                index  index.html index.htm;
        }
}

NGINX

ln -s /etc/nginx/sites-{available,enabled}/dev.dollarbutton.net

mkdir /var/www/dev.dollarbutton.net
echo "testing..." >> /var/www/dev.dollarbutton.net/index.html

/etc/init.d/nginx stop
/etc/init.d/nginx start


