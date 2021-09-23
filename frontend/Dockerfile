FROM node:12.13 AS frontend-build
ADD . /usr/src/app/frontend
WORKDIR /usr/src/app/frontend
RUN npm install --global yarn 
RUN yarn global add @vue/cli && yarn install
EXPOSE 8080 
