FROM ruby:2.6.6 AS api-build
ADD . /usr/src/app/api
WORKDIR /usr/src/app/api
RUN apt-get update 
RUN bundle install 
EXPOSE 3000