#!/bin/sh

cd `dirname $0`

BUCKET=$1
ROLE=$2

aws s3 cp stack.yaml s3://${BUCKET}/
aws s3 sync component s3://${BUCKET}/component --delete

aws cloudformation create-stack \
    --template-url https://s3-ap-northeast-1.amazonaws.com/${BUCKET}/stack.yaml \
    --stack-name log-aggregator-t \
    --parameters file://parameters/${ROLE}.json \
    --capabilities CAPABILITY_NAMED_IAM 
