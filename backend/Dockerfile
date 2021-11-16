FROM ruby:2.6.6 AS backend-build
COPY . /usr/src/app/backend
WORKDIR /usr/src/app/backend
RUN apt-get update 
RUN bundle install 
RUN chmod +x ./entrypoint.sh
EXPOSE 3000
ENTRYPOINT ["/bin/sh", "./entrypoint.sh" ]
