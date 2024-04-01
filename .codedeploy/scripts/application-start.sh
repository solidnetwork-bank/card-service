#!/bin/bash
echo "-------------------------------------------------------" >> /opt/codedeploy-agent/logs/codedeploy-deployments.log
echo " A P P L I C A T I O N  S T A R T                      " >> /opt/codedeploy-agent/logs/codedeploy-deployments.log
echo "-------------------------------------------------------" >> /opt/codedeploy-agent/logs/codedeploy-deployments.log

# run service in port=80
cd /opt/solidnetwork/bank/services
pwd | perl -MPOSIX -ne 'BEGIN{ $|=1 } print strftime( "%Y-%m-%d %H:%M:%S", localtime ) . " [pwd] $_"' >> /opt/codedeploy-agent/logs/codedeploy-deployments.log
ls | perl -MPOSIX -ne 'BEGIN{ $|=1 } print strftime( "%Y-%m-%d %H:%M:%S", localtime ) . " [ls] $_"' >> /opt/codedeploy-agent/logs/codedeploy-deployments.log
if [ -f 'card-service.jar' ]
then
    sudo java -jar -Dserver.port=80 card-service.jar > /dev/null 2> /dev/null < /dev/null &
    echo "service is deployed, check log" | perl -MPOSIX -ne 'BEGIN{ $|=1 } print strftime( "%Y-%m-%d %H:%M:%S", localtime ) . " [echo] $_"' >> /opt/codedeploy-agent/logs/codedeploy-deployments.log
else
   echo "no service to deploy with that name" | perl -MPOSIX -ne 'BEGIN{ $|=1 } print strftime( "%Y-%m-%d %H:%M:%S", localtime ) . " [echo] $_"' >> /opt/codedeploy-agent/logs/codedeploy-deployments.log
fi

echo "-------------------------------------------------------" >> /opt/codedeploy-agent/logs/codedeploy-deployments.log
echo " APPLICATION START SUCCESS                             " >> /opt/codedeploy-agent/logs/codedeploy-deployments.log
echo "-------------------------------------------------------" >> /opt/codedeploy-agent/logs/codedeploy-deployments.log
