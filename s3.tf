# S3 Bucket for logs
resource "aws_s3_bucket" "logs" {
  bucket = "eks-core-logs-bucket"
  tags = {
    Name = "eks-core-logs"
  }
}

