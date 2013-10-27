#!/bin/bash

SRC_DIR=../${HOSTNAME}/
NAME=.screenlayout
DEST_DIR=~/
XFCE_DIR=~/.config/xfce4/xfconf/xfce-perchannel-xml/
XFCE_FILE=xfce4-keyboard-shortcuts.xml

if [ ! -d "${DEST_DIR}${NAME}" ]; then
    cp -Rf ${SRC_DIR}${NAME} ${DEST_DIR}
    mv ${XFCE_DIR}${XFCE_FILE} ${XFCE_DIR}${XFCE_FILE}.old
    mv ${DEST_DIR}${NAME}/${XFCE_FILE} ${XFCE_DIR}${XFCE_FILE}
fi
