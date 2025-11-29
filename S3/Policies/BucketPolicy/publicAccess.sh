
#Bucket Policy for public access 

#1.Unblock the public access in S3 bucket permissions

{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "PublicBucketAccess",
            "Effect": "Allow",
            "Principal": "*",
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::amzn-bucket-v1/*"
        }
    ]
}
