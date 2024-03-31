#!/bin/bash
cd /opt/solidnetwork/bank/services
# Check whether the file exists or not
if [ -f 'card-service.jar' ]; then
sudo rm card-service.jar
echo "card-service.jar is removed"
fi
