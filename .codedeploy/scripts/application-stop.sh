#!/bin/bash
echo "-------------------------------------------------------" >> /opt/codedeploy-agent/logs/codedeploy-deployments.log
echo " A P P L I C A T I O N  S T O P                        " >> /opt/codedeploy-agent/logs/codedeploy-deployments.log
echo "-------------------------------------------------------" >> /opt/codedeploy-agent/logs/codedeploy-deployments.log

#  make sure the four shell scripts have execute permissions
pwd | perl -MPOSIX -ne 'BEGIN{ $|=1 } print strftime( "%Y-%m-%d %H:%M:%S", localtime ) . " [pwd] $_"' >> /opt/codedeploy-agent/logs/codedeploy-deployments.log
ls | perl -MPOSIX -ne 'BEGIN{ $|=1 } print strftime( "%Y-%m-%d %H:%M:%S", localtime ) . " [ls] $_"' >> /opt/codedeploy-agent/logs/codedeploy-deployments.log
#sudo chmod -v +x ./*.sh | sudo tee -a /opt/codedeploy-agent/logs/codedeploy-deployments.log

#sudo killall java

#process=`ps -ef | grep -v awk | awk -e '/java.*<PROCESS_NAME>/ { print $2 }'`
#kill ${process}

#process=`ps -ef | grep -v awk | awk -e '/java.*'"${PROCESS_NAME}"'/ { print $2 }'`
#kill -TERM ${process}


#pkill -f /var/appname.jar

echo "-------------------------------------------------------" >> /opt/codedeploy-agent/logs/codedeploy-deployments.log
echo " APPLICATION STOP SUCCESS                                " >> /opt/codedeploy-agent/logs/codedeploy-deployments.log
echo "-------------------------------------------------------" >> /opt/codedeploy-agent/logs/codedeploy-deployments.log
