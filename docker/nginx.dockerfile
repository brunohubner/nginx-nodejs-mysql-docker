FROM nginx:1.23.3-alpine

RUN rm /etc/nginx/conf.d/default.conf

COPY ../nginx/config/nginx.conf /etc/nginx/conf.d/default.conf

