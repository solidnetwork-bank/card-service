#!/bin/bash
echo "-------------------------------------------------------" > /opt/codedeploy-agent/logs/codedeploy-deployments.log
echo " B E F O R E  I N S T A L L                            " > /opt/codedeploy-agent/logs/codedeploy-deployments.log
echo "-------------------------------------------------------" > /opt/codedeploy-agent/logs/codedeploy-deployments.log

cd /opt/solidnetwork/bank/services
# Check whether the file exists or not
if [ -f 'card-service.jar' ]; then
sudo rm card-service.jar
echo "card-service.jar is removed" > /opt/codedeploy-agent/logs/codedeploy-deployments.log
#fi

echo "-------------------------------------------------------" > /opt/codedeploy-agent/logs/codedeploy-deployments.log
echo " BEFORE INSTALL SUCCESS                                " > /opt/codedeploy-agent/logs/codedeploy-deployments.log
echo "-------------------------------------------------------" > /opt/codedeploy-agent/logs/codedeploy-deployments.log
