
#command to pre-sign URL 

aws s3 presign s3://bucket-name/filename --region region-name

#cmd - presign URL for the blow object to access which is present in specific aws region
aws s3 presign s3://saa-bucket-45814-presigned-url/index.html --region us-east-1