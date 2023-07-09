#!/bin/sh

cp /usr/share/nginx/html/config/$CONFIG_FILE /usr/share/nginx/html/index.html

# Start nginx
nginx -g 'daemon off;'