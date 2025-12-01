1.Create both source/destination buckets and make sure VERSIONING is ENABLED .
2.Define the Replication Policy under the Source bucket and assign an IAM Role (Source-Account-IAM-Role.json).
3.Create a Resource based policy in the destination bucket to enable access to the IAM Role created in source account .(Destination-Account-Resource-based-Policy.json)
4. Validate by uploading few files in source account bucket.

{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": [
                "s3:ListBucket",
                "s3:GetReplicationConfiguration",
                "s3:GetObjectVersionForReplication",
                "s3:GetObjectVersionAcl",
                "s3:GetObjectVersionTagging",
                "s3:GetObjectRetention",
                "s3:GetObjectLegalHold"
            ],
            "Effect": "Allow",
            "Resource": [
                "arn:aws:s3:::vg-2025productcatalogue", #vishnugettam-2025 account
                "arn:aws:s3:::vg-2025productcatalogue/*", #vishnugettam account
                "arn:aws:s3:::vgproductcatalogue",
                "arn:aws:s3:::vgproductcatalogue/*"
            ]
        },
        {
            "Action": [
                "s3:ReplicateObject",
                "s3:ReplicateDelete",
                "s3:ReplicateTags",
                "s3:ObjectOwnerOverrideToBucketOwner"
            ],
            "Effect": "Allow",
            "Resource": [
                "arn:aws:s3:::vg-2025productcatalogue/*",
                "arn:aws:s3:::vgproductcatalogue/*"
            ]
        }
    ]
}