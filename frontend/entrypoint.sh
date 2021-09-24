#!/bin/sh
yarn serve
if $? -eq 0 then
  echo "OK"
  else echo "ERROR" 
fi