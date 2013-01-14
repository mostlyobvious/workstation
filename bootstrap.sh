#!/bin/bash

function log {
  echo -e ">> $1"
}

log "Started bootstrap, hold on!"

log "Getting up to date Rubygems, Chef and Librarian"
# sudo gem update --system
# sudo gem install chef

log "Get all the cookbooks"
librarian-chef install

log "Getting ownership of /usr/local"
sudo chown -R `whoami`:staff /usr/local

log "Cooking with Chef"
sudo chef-solo -c config/solo.rb -j nodes/osx.json
