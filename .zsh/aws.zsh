#aws-vault
alias awsv='aws-vault exec Administrator'
alias awsv-no-session='aws-vault exec Administrator --no-session'
alias awsv-acct-admin='aws-vault exec account-admin --duration=2h'
alias awsv-acct-admin-no-session='aws-vault exec account-admin --no-session'


#aws cli aliases
alias ec2-check='aws ec2 describe-instances --query "Reservations[*].Instances[*].{PublicIP:PublicIpAddress,PrivateIP:PrivateIpAddress,Name:Tags[?Key=='Name']|[0].Value,Type:InstanceType,Status:State.Name,VpcId:VpcId,Id:InstanceId}" --filters "Name=instance-state-name,Values=running" --output table'
alias s3-list="aws s3api list-buckets | jq -r '.Buckets[].Name'"
alias vpc-check='aws ec2 --output text --query "Vpcs[*].{VpcId:VpcId,Name:Tags[?Key=='Environment'].Value|[0],CidrBlock:CidrBlock}" describe-vpcs'
alias s3-delete='aws s3api delete-bucket --bucket ${BUCKET}'
alias iam-access-id-admin='aws iam get-user --user-name administrator | jq -r ".User | .UserId"'
#cloud-nuke aws
alias aws-nuke='cloud-nuke aws --exclude-resource-type s3 --exclude-resource-type iam --exclude-resource-type secretsmanager --exclude-resource-type dynamodb'
alias aws-nuke-view-us-east-1='cloud-nuke inspect-aws --region us-east-1'

alias aws-services-list='~/.config/scripts/./services.sh'
alias aws-services-cost='~/.config/scripts/service-cost.sh'
alias aws-current-cost='~/.config/scripts/awscurrentcost.sh'
alias aws-cost-overall='~/.config/scripts/awscost.sh'
alias s3-backend-delete='~/.config/scripts/./s3-backend-delete.sh'


alias s3-create='python3 ~/.config/scripts/s3.py'
