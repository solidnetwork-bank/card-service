#!/bin/bash

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


echo "The ApplicationStart deployment lifecycle event successfully completed." > /opt/codedeploy-agent/logs/codedeploy-deployments.log
