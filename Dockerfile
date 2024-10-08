FROM node:20-alpine3.20
EXPOSE 3000/tcp
WORKDIR /app
COPY package.json yarn.lock /app
RUN yarn install --frozen-lockfile
RUN apk add curl
COPY src /app/src
CMD yarn start
