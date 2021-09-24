FROM ruby:2.6.6 AS api-build
COPY . /usr/src/app/api
WORKDIR /usr/src/app/api
RUN apt-get update 
RUN bundle install 
RUN chmod +x ./entrypoint.sh
EXPOSE 3000