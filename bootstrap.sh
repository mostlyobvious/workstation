#!/bin/bash

function log {
  echo -e ">> $1..."
}

if [[ -z "$1" ]]; then
  log "give me the name of your node buddy, exiting"
  exit 1
fi

if [ $OSTYPE = "linux-gnu" ]; then
  if [ -x /usr/bin/apt-get ]; then
    OS="ubuntu"
  else
    log "did not care to support, exiting"
    exit 2
  fi
else
  OS="osx"
fi

log "starting bootstrap for $OS"
sudo -v

if [ $OS = "ubuntu" ]; then
  log "refreshing Apt database and getting initial dependencies"
  sudo apt-get -y -qq update
  sudo apt-get -y -qq install build-essential ruby rubygems
fi

if [ $OS = "osx" ]; then
  if [[ -d /usr/local ]]; then
    log "setting permissions on /usr/local for Homebrew"
    sudo chown -R `whoami`:staff /usr/local
  fi
fi

if [[ -x /usr/bin/chef-solo ]]; then
  log "getting Chef"
  sudo gem install --no-rdoc --no-ri chef
fi

if [[ -x /usr/bin/librarian-chef ]]; then
  log "getting Librarian"
  sudo gem install --no-rdoc --no-ri librarian
fi

log "bundling cookbooks"
librarian-chef install

log "cooking with Chef"
./converge.sh $1
