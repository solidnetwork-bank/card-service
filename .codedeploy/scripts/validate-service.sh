#!/bin/bash
echo "-------------------------------------------------------" >> /opt/codedeploy-agent/logs/codedeploy-deployments.log
echo " V A L I D A T E  S E R V I C E                        " >> /opt/codedeploy-agent/logs/codedeploy-deployments.log
echo "-------------------------------------------------------" >> /opt/codedeploy-agent/logs/codedeploy-deployments.log

while [ true ]
  do
    if [ "$(curl -s http://localhost:80/actuator/health)" = '{"status":"UP"}' ]
     then
       echo "/actuator/health STATUS=UP" | perl -MPOSIX -ne 'BEGIN{ $|=1 } print strftime( "%Y-%m-%d %H:%M:%S", localtime ) . " [echo] $_"' >> /opt/codedeploy-agent/logs/codedeploy-deployments.log
       exit 0
    else
       echo "/actuator/health STATUS is not UP or it can't be consulted" | perl -MPOSIX -ne 'BEGIN{ $|=1 } print strftime( "%Y-%m-%d %H:%M:%S", localtime ) . " [echo] $_"' >> /opt/codedeploy-agent/logs/codedeploy-deployments.log
       sleep 3s
    fi
done

echo "-------------------------------------------------------" >> /opt/codedeploy-agent/logs/codedeploy-deployments.log
echo " VALIDATE SERVICE SUCCESS                              " >> /opt/codedeploy-agent/logs/codedeploy-deployments.log
echo "-------------------------------------------------------" >> /opt/codedeploy-agent/logs/codedeploy-deployments.log
