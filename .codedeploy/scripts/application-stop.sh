#!/bin/bash
cd /opt/codedeploy-agent/logs
# Check whether the log exists or not
if [ -f 'codedeploy-deployments.log' ]
then
    echo "-------------------------------------------------------" >> /opt/codedeploy-agent/logs/codedeploy-deployments.log
else
echo "-------------------------------------------------------" > /opt/codedeploy-agent/logs/codedeploy-deployments.log
fi

echo " A P P L I C A T I O N  S T O P                        " >> /opt/codedeploy-agent/logs/codedeploy-deployments.log
echo "-------------------------------------------------------" >> /opt/codedeploy-agent/logs/codedeploy-deployments.log


#sudo killall java

#process=`ps -ef | grep -v awk | awk -e '/java.*<PROCESS_NAME>/ { print $2 }'`
#kill ${process}

#process=`ps -ef | grep -v awk | awk -e '/java.*'"${PROCESS_NAME}"'/ { print $2 }'`
#kill -TERM ${process}


#pkill -f /var/appname.jar

echo "-------------------------------------------------------" >> /opt/codedeploy-agent/logs/codedeploy-deployments.log
echo " APPLICATION STOP SUCCESS                                " >> /opt/codedeploy-agent/logs/codedeploy-deployments.log
echo "-------------------------------------------------------" >> /opt/codedeploy-agent/logs/codedeploy-deployments.log
