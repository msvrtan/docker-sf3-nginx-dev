FROM nginx:latest

ADD nginx.conf /etc/nginx/
ADD symfony-dev.conf /etc/nginx/sites-available/
#ADD symfony-test.conf /etc/nginx/sites-available/

#RUN echo "upstream php-upstream { server php7fpm-scribe-dev:9000; }" > /etc/nginx/conf.d/upstream.conf

RUN usermod -u 1000 www-data

CMD ["nginx"]

EXPOSE 80 443
