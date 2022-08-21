#!/bin/bash
#
# update-docker
#
# Upgrade all running docker containers to the latest version.
#

set -e

cd "$(dirname "$0")"

if [ -e /dev/ttyUSB* ] ; then
    echo "Error: A serial device is connected, aborting upgrade."
    exit 1
fi

echo "Starting upgrade."

docker-compose down

docker-compose build --pull

docker-compose up -d

echo "Upgrade completed successfully."
