#!/bin/bash

# setup the backend
cd api
rails db:create
rails db:migrate
rails db:seed
bundle install

# setup the frontend
cd ../frontend
yarn install

echo "Success 🎉"