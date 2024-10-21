# Variables for the environment and ado (application development office)
variable "env" {
  type    = string
  default = "sandbox"
}

variable "ado" {
  type    = string
  default = "batcave"
}

variable "region" {
  description = "The AWS region to deploy resources to"
  type        = string
  default     = "us-east-1"  # Change this to your preferred region
}
