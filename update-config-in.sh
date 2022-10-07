#!/bin/bash

rm -f Config.in
touch Config.in
for fp in package/* 
do
    PACKAGE_NAME=$(basename $fp)
    CONFIG_LINE="source \"\$BR2_EXTERNAL_CRAFTBEERPI_PATH/package/${PACKAGE_NAME}/Config.in\""
    echo "Adding ${CONFIG_LINE} to Config.in"
    echo "$CONFIG_LINE" >> Config.in
done
