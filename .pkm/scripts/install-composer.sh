#!/bin/bash

curl -sS https://getcomposer.org/installer | php
mv -f composer.phar ${HOME}/bin/composer
