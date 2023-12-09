#!/bin/bash

aws ec2 describe-images --owners aws-marketplace \
	--query 'Images[*].[CreationDate,Name,ImageId]' --filters "Name=name,Values=Ubuntu 23.04*" \
	--region us-east-1 --output table | sort -r
