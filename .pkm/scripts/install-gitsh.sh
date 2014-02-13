#!/bin/bash

DIRECTORY=${HOME}/bin
VERSION=0.4

echo "[install] gitsh"

cd ${DIRECTORY}
curl -O http://thoughtbot.github.io/gitsh/gitsh-${VERSION}.tar.gz
tar -zxf gitsh-${VERSION}.tar.gz
cd gitsh-${VERSION}
./configure
make
sudo make install
cd ..
rm gitsh-${VERSION} -rf
rm gitsh-${VERSION}.tar.gz -f
