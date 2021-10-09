# syntax=docker/dockerfile:1
FROM nginx:mainline-alpine

WORKDIR /usr/share/nginx

COPY littlelink/ html/