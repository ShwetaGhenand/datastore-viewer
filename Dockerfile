FROM node:8

WORKDIR /app
ENV DSVIEWER_PROJECT_ID dsviewer-local
ENV DSVIEWER_PORT 8282
ENV DSVIEWER_DATASTORE_ENDPOINT datastore:8081

EXPOSE $UI_PORT

RUN yarn global add google-cloud-gui

COPY ./entrypoint.sh .

ENTRYPOINT ["/bin/sh", "entrypoint.sh"]