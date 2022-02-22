#!/usr/bin/env bash
rm /usr/src/app/tmp/pids/server.pid
bundle exec rails s -p 3000 -b '0.0.0.0'
