function box() {
    aws ec2 describe-instances --region $1 --filters Name=tag:project,Values=$2 Name=instance-state-name,Values=running --query "Reservations[].Instances[0].PublicDnsName" --output text
}
