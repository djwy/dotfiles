#!/bin/bash

bin/spring stop
bin/rake assets:clobber
bin/rake tmp:cache:clear
npm cache clean
rm -rf node_modules/
npm install
