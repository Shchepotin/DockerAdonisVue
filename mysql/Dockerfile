FROM mysql:5.7.21

ARG MYSQL_ROOT_PASSWORD=secret
ENV MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD}

ARG TZ=UTC
ENV TZ=${TZ}
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN chown -R mysql:root /var/lib/mysql/

CMD ["mysqld"]

EXPOSE 3306
