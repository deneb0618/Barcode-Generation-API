FROM hivesolutions/alpine_dev:latest

LABEL version="1.0"
LABEL maintainer="EdenTech <techdeneb@gmail.com>"

EXPOSE 8080

ENV HOST 0.0.0.0
ENV PORT 8080
ENV NODE_ENV production

ADD app.js /app/
ADD package.json /app/
ADD lib /app/lib

WORKDIR /app

RUN apk update && apk add nodejs npm
RUN npm install

CMD ["/usr/bin/node", "/app/app.js"]
