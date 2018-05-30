#!/bin/bash
#sudo gem install bundler --no-ri --no-rdoc
cd /tmp/
/usr/local/bin/bundle install --path=vendor
/usr/local/bin/bundle exec rake spec
