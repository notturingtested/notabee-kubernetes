FROM node:lts-alpine AS frontend-build
WORKDIR /usr/src/app/frontend
COPY package.json ./
COPY yarn.lock ./
RUN yarn install
COPY . .
RUN chmod +x ./entrypoint.sh
