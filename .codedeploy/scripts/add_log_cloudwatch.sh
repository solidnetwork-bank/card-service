cd /opt/aws/amazon-cloudwatch-agent/etc
rm -f amazon-cloudwatch-agent.json
wget https://raw.githubusercontent.com/solidnetwork-bank/IaC/main/AWS/CloudWatch/amazon-cloudwatch-agent-EC2-Everglades.json
mv amazon-cloudwatch-agent-EC2-Everglades.json amazon-cloudwatch-agent.json
amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -s -c file:/opt/aws/amazon-cloudwatch-agent/etc/amazon-cloudwatch-agent.json
