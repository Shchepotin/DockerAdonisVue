# Run server with compiled source
FROM nginx:alpine

RUN apk update \
    && apk upgrade \
    && apk update \
    && apk add --no-cache openssl \
    && apk add --no-cache bash \
    && apk add nodejs=8.9.3-r1 nodejs-npm=8.9.3-r1 \
    && adduser -D -H -u 1000 -s /bin/bash www-data \
    && rm /etc/nginx/conf.d/default.conf

COPY ./infrastructure/nginx/sites /etc/nginx/sites-available
COPY ./infrastructure/nginx/nginx.conf /etc/nginx/

COPY ./src /usr/src/app
WORKDIR /usr/src/app
RUN npm install && npm run build \
    && cp -fR /usr/src/app/dist/* /usr/share/nginx/html

COPY ./startup.prod.sh /opt/startup.prod.sh
CMD ["/bin/bash", "/opt/startup.prod.sh"]

EXPOSE 80 443
