FROM node:12.13 AS frontend-build
COPY . /usr/src/app/frontend
WORKDIR /usr/src/app/frontend
RUN npm install --global yarn 
RUN yarn install
RUN chmod +x ./entrypoint.sh
EXPOSE 8080 
