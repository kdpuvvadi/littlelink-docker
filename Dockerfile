FROM nginx:mainline-alpine

ENV light "css/skeleton-light.css"
ENV dark "css/skeleton-dark.css"

RUN apk update && apk add git --no-cache
run git clone https://github.com/sethcottle/littlelink.git /littlelink/

WORKDIR /usr/share/nginx

RUN cp -r /littlelink/* html/

RUN sed -i "s:$light:$dark:" html/index.html
