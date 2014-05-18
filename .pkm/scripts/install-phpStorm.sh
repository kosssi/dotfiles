#!/bin/bash

DIRECTORY=/opt/phpStorm
VERSION=7.1.3

if [ ! -d "${DIRECTORY}-${VERSION}" ]; then

    echo "[install] phpStorm"

    wget http://download.jetbrains.com/webide/PhpStorm-${VERSION}.tar.gz
    sudo tar xvfz PhpStorm-${VERSION}.tar.gz
    rm PhpStorm-${VERSION}.tar.gz
    sudo mv ./$( ls -ap . | grep -e '[pP]hpStorm.*/$' ) ${DIRECTORY}-${VERSION}
    if [ -d "${DIRECTORY}" ]; then
        sudo rm ${DIRECTORY}
    fi
    sudo ln -s ${DIRECTORY}-${VERSION} ${DIRECTORY}
fi
