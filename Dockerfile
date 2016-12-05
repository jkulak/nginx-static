FROM nginx:latest

EXPOSE 20333

ENV NODE_ENV development
ENV APPLICATION_ENV development

RUN mkdir -p /var/www/static
WORKDIR /var/www/static

RUN mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.default
COPY ./conf/nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./conf/nginx/static.conf /etc/nginx/conf.d/static.conf
COPY . /var/www/static
