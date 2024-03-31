#!/bin/bash


#sudo killall java

#process=`ps -ef | grep -v awk | awk -e '/java.*<PROCESS_NAME>/ { print $2 }'`
#kill ${process}

#process=`ps -ef | grep -v awk | awk -e '/java.*'"${PROCESS_NAME}"'/ { print $2 }'`
#kill -TERM ${process}


#pkill -f /var/appname.jar

echo "The ApplicationStop deployment lifecycle event successfully completed." > /opt/codedeploy-agent/logs/codedeploy-deployments.log
