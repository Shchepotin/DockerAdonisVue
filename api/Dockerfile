FROM node:8.11.4

RUN npm i -g @adonisjs/cli

COPY ./src /usr/src/app
WORKDIR /usr/src/app

ENV HOST=${HOST}
ENV PORT=${PORT}

COPY ./startup.prod.sh /opt/startup.prod.sh
CMD ["/bin/bash", "/opt/startup.prod.sh"]

EXPOSE ${PORT}
