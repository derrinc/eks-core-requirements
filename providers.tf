provider "aws" {
  region = "us-east-1"
}

# Fetch available availability zones
data "aws_availability_zones" "available" {
  state = "available"
}
