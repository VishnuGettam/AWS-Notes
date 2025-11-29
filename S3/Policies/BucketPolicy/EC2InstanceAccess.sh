#Once Ec2 instance is created , then we can create new IAM role with 
#required access to s3 buckets and assing the role to EC2 .

#IAM ROLE with S3 read only access
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "s3:Get*",
                "s3:List*",
                "s3:Describe*",
                "s3-object-lambda:Get*",
                "s3-object-lambda:List*"
            ],
            "Resource": "*"
        }
    ]
}
