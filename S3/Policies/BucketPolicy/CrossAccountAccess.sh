#User based access
1.Create a bucket and assign the bucket policy
2.Use IAM USER from other account and add it in Resource
3.Assign the actions and bucket details .

{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "PublicBucketAccess",
            "Effect": "Allow",
            "Principal": {
                "AWS": "arn:aws:iam::819162972734:user/vg-admin" #Cross account user
            },
            "Action": [
                "s3:GetObject",
                "s3:ListBucket"
            ],
            "Resource": [
                "arn:aws:s3:::amzn-bucket-v1",
                "arn:aws:s3:::amzn-bucket-v1/*"
            ]
        }
    ]
}

#command to validate (Cross account User)
aws s3 ls s3://amzn-bucket-v1


#IAM Role 
| Step | In        | What to do                               |
| ---- | --------- | ---------------------------------------- |
| 1    | Account A | Create IAM role for cross-account access |
| 2    | Account A | Add S3 bucket policy allowing Account B  |
| 3    | Account B | Give user/role required permissions      |
| 4    | Account B | (Optional) Assume Account A role         |
| 5    | Both      | Test access with CLI                     |
