FROM nginx:mainline-alpine

RUN apk update && apk add git --no-cache
RUN git clone https://github.com/sethcottle/littlelink.git /littlelink/

WORKDIR /usr/share/nginx

RUN cp -r /littlelink/* html/