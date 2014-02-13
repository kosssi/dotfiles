#!/bin/bash

git clone https://github.com/github/hub.git
cd hub
sudo gem install rack
sudo rake install prefix=/usr/local
cd ..
rm hub -rf
