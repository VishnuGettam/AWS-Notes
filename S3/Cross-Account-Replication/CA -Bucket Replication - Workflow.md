1.Create both source/destination buckets and make sure VERSIONING is ENABLED .
2.Define the Replication Policy under the Source bucket and assign an IAM Role (Source-Account-IAM-Role.json).
3.Create a Resource based policy in the destination bucket to enable access to the IAM Role created in source account .(Destination-Account-Resource-based-Policy.json)
4. Validate by uploading few files in source account bucket.
