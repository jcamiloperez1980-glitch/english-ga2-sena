#!/bin/sh
PORT=${PORT:-8080}
cat > /etc/nginx/conf.d/default.conf <<EOF
server {
    listen ${PORT};
    root /usr/share/nginx/html;
    index index.html;
    location / {
        try_files \$uri \$uri.html \$uri/ =404;
    }
}
EOF
nginx -g "daemon off;"
