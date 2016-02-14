#!/bin/sh

WORK_DIR=/var/www/taskit

echo 'stop unicorn'
cd $WORK_DIR
kill `cat tmp/pids/unicorn.pid`

echo 'module update'
cd $WORK_DIR
git pull origin master

echo 'bundle install'
cd $WORK_DIR
bundle install --path vendor/bundle

echo 'migrate'
cd $WORK_DIR
bundle exec rake db:migrate RAILS_ENV=production

echo 'precomplie'
cd $WORK_DIR
rm -rf tmp/cache
rm -rf public/assets
bundle exec rake assets:precompile RAILS_ENV=production

echo 'start unicorn'
bundle exec unicorn -E production -c config/unicorn.rb -D
