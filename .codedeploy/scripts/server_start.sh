#!/usr/bin/env bash
cd /opt/solidnetwork/bank/services
sudo java -jar -Dserver.port=80 \
    *.jar > /dev/null 2> /dev/null < /dev/null &
