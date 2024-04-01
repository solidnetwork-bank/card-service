#!/bin/bash
echo "-------------------------------------------------------" >> /opt/codedeploy-agent/logs/codedeploy-deployments.log
echo " B E F O R E  I N S T A L L                            " >> /opt/codedeploy-agent/logs/codedeploy-deployments.log
echo "-------------------------------------------------------" >> /opt/codedeploy-agent/logs/codedeploy-deployments.log

# terminate java process
process=`ps -ef | grep -v awk | awk -e '/java.*card-service.jar/ { print $2 }'`
if [ -z "$process" ]
then
    echo "no process to terminate" | perl -MPOSIX -ne 'BEGIN{ $|=1 } print strftime( "%Y-%m-%d %H:%M:%S", localtime ) . " [echo] $_"' >> /opt/codedeploy-agent/logs/codedeploy-deployments.log
else
      echo "terminating process ${process}" | perl -MPOSIX -ne 'BEGIN{ $|=1 } print strftime( "%Y-%m-%d %H:%M:%S", localtime ) . " [echo] $_"' >> /opt/codedeploy-agent/logs/codedeploy-deployments.log
      sudo kill -TERM ${process} | perl -MPOSIX -ne 'BEGIN{ $|=1 } print strftime( "%Y-%m-%d %H:%M:%S", localtime ) . " [kill] $_"' >> /opt/codedeploy-agent/logs/codedeploy-deployments.log
fi

# remove jar file
cd /opt/solidnetwork/bank/services
pwd | perl -MPOSIX -ne 'BEGIN{ $|=1 } print strftime( "%Y-%m-%d %H:%M:%S", localtime ) . " [pwd] $_"' >> /opt/codedeploy-agent/logs/codedeploy-deployments.log
ls | perl -MPOSIX -ne 'BEGIN{ $|=1 } print strftime( "%Y-%m-%d %H:%M:%S", localtime ) . " [ls] $_"' >> /opt/codedeploy-agent/logs/codedeploy-deployments.log
if [ -f 'card-service.jar' ]
then
    sudo rm -v -f card-service.jar | perl -MPOSIX -ne 'BEGIN{ $|=1 } print strftime( "%Y-%m-%d %H:%M:%S", localtime ) . " [rm] $_"' | sudo tee -a /opt/codedeploy-agent/logs/codedeploy-deployments.log
fi

echo "-------------------------------------------------------" >> /opt/codedeploy-agent/logs/codedeploy-deployments.log
echo " BEFORE INSTALL SUCCESS                                " >> /opt/codedeploy-agent/logs/codedeploy-deployments.log
echo "-------------------------------------------------------" >> /opt/codedeploy-agent/logs/codedeploy-deployments.log
