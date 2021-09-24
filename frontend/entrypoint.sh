#!/bin/sh
yarn serve
if [ $? -eq 0 ] then
  echo "OK"
  else
  yarn global add @vue/cli && yarn install
  yarn serve 
fi