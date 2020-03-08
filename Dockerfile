FROM alpine

ARG APP_INSTALL_DIR=/app/

WORKDIR ${APP_INSTALL_DIR}

COPY ./bin/echo-server ./
COPY ./docker-entrypoint.sh ./

ENV PORT 80
EXPOSE 80

CMD [ "./docker-entrypoint.sh", "start" ]
