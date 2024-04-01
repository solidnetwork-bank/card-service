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

# add log to CloudWatch Agent
#cd /opt/aws/amazon-cloudwatch-agent/etc
#sudo rm -f amazon-cloudwatch-agent.json
#sudo wget https://raw.githubusercontent.com/solidnetwork-bank/IaC/main/AWS/CloudWatch/amazon-cloudwatch-agent-EC2-Everglades.json
#sudo mv amazon-cloudwatch-agent-EC2-Everglades.json amazon-cloudwatch-agent.json
#sudo amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -s -c file:/opt/aws/amazon-cloudwatch-agent/etc/amazon-cloudwatch-agent.json


echo "-------------------------------------------------------" >> /opt/codedeploy-agent/logs/codedeploy-deployments.log
echo " APPLICATION START SUCCESS                                " >> /opt/codedeploy-agent/logs/codedeploy-deployments.log
echo "-------------------------------------------------------" >> /opt/codedeploy-agent/logs/codedeploy-deployments.log




 ## **** /tmp/sleep.sh > /dev/null 2> /dev/null < /dev/null &
#cd /opt/solidnetwork/bank/services
#sudo java -jar -Dserver.port=80 \
#    *.jar > /dev/null 2> /dev/null < /dev/null &

#nohup java -jar -Dserver.port=80 card-service.jar &


#java -jar card-service.jar > /opt/solidnetwork/bank/logs/card-service.log 2>&1 &

#nohup java -jar card-service.jar > /dev/null &


#sudo nohup java -jar -Dserver.port=80 card-service.jar > /dev/null 2> /dev/null < /dev/null &


#sudo wget https://github.com/solidnetwork-bank/card-service/blame/5b752f67097c33602cecc2d80b24192c4393a22e/target/service-0.0.2-SNAPSHOT.jar
#sudo mv service-0.0.2-SNAPSHOT.jar card-service.jar
#java - jar card-service.jar


#echo "The ApplicationStart deployment lifecycle event successfully completed." > /opt/codedeploy-agent/logs/codedeploy-deployments.log





#echo "The AfterInstall deployment lifecycle event successfully completed." > /opt/codedeploy-agent/logs/codedeploy-deployments.log
