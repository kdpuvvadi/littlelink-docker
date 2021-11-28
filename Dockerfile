FROM nginx:mainline-alpine

ENV light "css/skeleton-light.css"
ENV dark "css/skeleton-dark.css"

RUN apk add git --no-cache \
    && git clone https://github.com/sethcottle/littlelink.git /littlelink/

WORKDIR /usr/share/nginx

RUN cp -r /littlelink/* html/

RUN sed -i "s:$light:$dark:" html/index.html
