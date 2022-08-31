#!/bin/bash
#find vpc in aws console we are filtering using the name tag
VpcID=$(aws ec2 describe-vpcs --region us-east-1 --filters Name=tag:Name,Values='ny VPC' --output text --query "Vpcs[].VpcId") 
&& echo $VpcID

#enter into terraform directory and do a terraform init
cd infrastructure
terraform init 

#import into terraform
terraform import aws_vpc.dev $VpcID


#want to see the config options for the vpc and copy the configuration into the t
terraform show
