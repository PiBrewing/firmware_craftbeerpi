#!/bin/sh
if [ ! -d "/srv/craftbeerpi/config" ]; then
    cd /srv/craftbeerpi && /bin/cbpi setup
fi
