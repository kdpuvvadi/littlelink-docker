FROM nginx:mainline-alpine

RUN apk update && apk add git
run git clone https://github.com/sethcottle/littlelink.git /littlelink/

WORKDIR /usr/share/nginx

RUN cp -r /littlelink/* html/