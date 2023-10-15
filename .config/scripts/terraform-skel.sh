#!/bin/bash

mkdir $1 && \
	cd $1 && \
	touch provider.tf vars.tf main.tf outputs.tf 

cat << EOF >> provider.tf
terraform {
     required_providers {                                   
       aws = {                                            
         source  = "hashicorp/aws"
         version = "~> 4.16"
       }                                                     
} 
     required_version = ">= 1.2.0"
  } 

provider "aws" { 
		 region = var.aws_region
}
EOF

