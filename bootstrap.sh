#!/bin/bash

function log {
  echo -e ">> $1..."
}

if [[ -z "$1" ]]; then
  log "give me the name of your node buddy"
  exit 1
fi

if [ $OSTYPE = "linux-gnu" ]; then
  OS="linux"
  if [ -x /usr/bin/apt-get ]; then
    PLATFORM="ubuntu"
    UBUNTU_CODENAME=`cat /etc/*-release | grep DISTRIB_CODENAME | sed 's/.*=//g'`
    log "Ubuntu $UBUNTU_CODENAME Linux detected."
  fi
else
  OS="osx"
  PLATFORM="darwin"
fi

log "starting bootstrap for $PLATFORM"

log "gaining superpowers"
sudo -v

if [ $PLATFORM = "ubuntu" ]; then
  log "Refreshing Apt database and getting initial dependencies"
  sudo apt-get -y -qq update
  sudo apt-get -y -qq install build-essential ruby rubygems
fi

if [ $PLATFORM = "darwin" ]; then
  log "setting permissions on /usr/local for Homebrew"
  sudo chown -R `whoami`:staff /usr/local
fi

log "getting Chef and Librarian"
sudo gem install chef librarian

log "bundling cookbooks"
librarian-chef install

log "cooking with Chef"
sudo chef-solo -c config/solo.rb -j nodes/$1.json

