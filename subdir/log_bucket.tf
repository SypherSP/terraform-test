resource "aws_s3_bucket" "log_bucket" {
  bucket = "log-master" # Change this to the desired log bucket name
  # Add any additional configuration for your log bucket as needed
}