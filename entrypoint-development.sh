#!/bin/sh
rm -f /usr/src/app/envizon/tmp/pids/server.pid
# rails db:setup
# RAILS_ENV=test rails db:setup
rails db:migrate
rails db:seed
exec rails server
