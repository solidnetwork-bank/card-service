#!/bin/bash
cd /opt/aws/amazon-cloudwatch-agent/etc
sudo rm -f amazon-cloudwatch-agent.json
sudo wget https://raw.githubusercontent.com/solidnetwork-bank/IaC/main/AWS/CloudWatch/amazon-cloudwatch-agent-EC2-Everglades.json
sudo mv amazon-cloudwatch-agent-EC2-Everglades.json amazon-cloudwatch-agent.json
sudo amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -s -c file:/opt/aws/amazon-cloudwatch-agent/etc/amazon-cloudwatch-agent.json
