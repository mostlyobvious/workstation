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
  log "Refreshing Apt database and getting initial dependencies"
  sudo apt-get -y -qq update
  sudo apt-get -y -qq install build-essential ruby rubygems
fi

if [ $OS = "osx" ]; then
  log "setting permissions on /usr/local for Homebrew"
  sudo chown -R `whoami`:staff /usr/local
fi

log "getting Chef and Librarian"
sudo gem install chef librarian

log "bundling cookbooks"
librarian-chef install

log "cooking with Chef"
sudo ./converge.sh $1
