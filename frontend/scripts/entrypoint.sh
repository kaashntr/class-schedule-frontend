#!/bin/sh

FILE=/usr/share/nginx/html/static/js/*.js

sed -i "s|BACKEND_URL|${BACKEND_URL}|g" $FILE

exec "$@"