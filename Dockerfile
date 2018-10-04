FROM nginx

COPY proxy.conf /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/nginx.conf

COPY certs/ /etc/nginx/