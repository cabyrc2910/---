FROM nginx:1.19.2

COPY ./docker/nginx/nginx.conf /etc/nginx/

RUN rm /etc/nginx/conf.d/default.conf
CMD ["nginx"]