#Create IAM Role in Account A with Trust Policy (IAM User ARN from other account)
#Add required permissons to the Role 


#Assign the STS:AssumeRole permission to the IAM User in other account for the above ROLE resource 
#Use the Switch Role URL from IAM Role in account A and enter the account B details 

#vishnugettam-2025(AWS account) 
# new bucket(vg2025bucket-v1) created
#IAM Role (CrossAccountAccess-Vihaan) created 
    #Trust Policy
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "Statement1",
            "Effect": "Allow",
            "Principal": {
                "AWS": "arn:aws:iam::329599618475:user/vihaan"
            },
            "Action": "sts:AssumeRole"
        }
    ]
}

#Role permissions to list buckets
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": "s3:ListAllMyBuckets",
            "Resource": "*"
        }
    ]
}

#Bucket level policy to "vg2025bucket-v1"
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "Statement1",
            "Effect": "Allow",
            "Principal": {
                "AWS": "arn:aws:iam::819162972734:role/CrossAccountAccess-Vihaan"
            },
            "Action": [
                "s3:GetObject",
                "s3:PutObject",
                "s3:ListBucket"
            ],
            "Resource": [
                "arn:aws:s3:::vg2025bucket-v1",
                "arn:aws:s3:::vg2025bucket-v1/*"
            ]
        }
    ]
}