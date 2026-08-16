#!/bin/bash


#################################
# Author: Suraj
# Date: 16/08/2026
#
# Version: v1
#
# This scripte will report the AWS uses
#################################

set -x

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users


# list s3 buckets
echo "Printing S3 Buckets"
aws s3 ls

# list EC2 Instances
echo "Printing EC2 Instances"
aws ec2 describe-instances

# list lambda
echo "Printing Lambda "
aws lambda list-functions

# list iam userd
echo "Printing IAM Users"
aws iam list-users
