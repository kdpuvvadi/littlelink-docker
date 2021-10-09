FROM nginx:mainline-alpine

WORKDIR /usr/share/nginx

VOLUME [ "/usr/share/nginx/html/"]
VOLUME [ "/etc/nginx/conf.d/" ]

COPY littlelink/ html/