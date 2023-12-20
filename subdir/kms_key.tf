resource "aws_kms_key" "mykey" {
  description             = "My KMS Key"
  deletion_window_in_days = 10
  policy                  = <<-POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "s3.amazonaws.com"
      },
      "Action": "kms:GenerateDataKey*",
      "Resource": "*",
      "Condition": {
        "StringLike": {
          "kms:EncryptionContext:aws:s3:arn": "arn:aws:s3:::your-bucket-name/*"
        }
      }
    }
  ]
}
POLICY
}
