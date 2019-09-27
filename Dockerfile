FROM alpine

RUN apk --no-cache add nginx php-fpm composer php-zip php-tokenizer php-fileinfo php-dom php-xmlwriter php-xml php-session npm
RUN mkdir /run/nginx
ADD default.conf /etc/nginx/conf.d/default.conf
ADD html /var/www/html

EXPOSE 80

CMD php-fpm7 && nginx -g "daemon off;"