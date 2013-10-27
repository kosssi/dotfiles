#!/bin/bash

DIR=/etc/php5/conf.d/
FILE=custom_php.ini

sudo cp -f ${FILE} ${DIR}${FILE}

#if [ ! -f "${FILE}" ]; then
#    curl -sS https://getcomposer.org/installer | php
#    sudo mv composer.phar ${FILE}
#fi
