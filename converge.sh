#!/bin/bash
chef-solo -c config/solo.rb -j nodes/$1.json
