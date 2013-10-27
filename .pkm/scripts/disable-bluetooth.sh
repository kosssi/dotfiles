#!/bin/bash

FILE=/etc/init.d/disable-bluetooth.sh

if [ ! -f ${FILE} ]; then
    echo "update-rc.d -f bluetooth remove" > tmp
    echo "service bluetooth stop" >> tmp
    sudo mv tmp ${FILE}
    sudo chmod +x ${FILE}
    sudo update-rc.d disable-bluetooth.sh defaults 
fi

# enable
#
# sudo update-rc.d bluetooth defaults
# sduo service bluetooth start
