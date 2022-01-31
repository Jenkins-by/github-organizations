FROM node:alpine3.11

EXPOSE 8100
COPY . /app
WORKDIR /app
RUN npm run bootstrap

ENTRYPOINT [ "npm" ]
CMD [ "run", "start:bot" ]
