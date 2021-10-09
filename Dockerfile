FROM nginx:mainline-alpine

WORKDIR /usr/share/nginx

COPY littlelink/ html/

VOLUME [ "/usr/share/nginx/html/","/etc/nginx/conf.d/" ]
