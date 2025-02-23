variable "vpc_name" {
  description = "The name of the VPC"
  default     = "cb-vpc"
  type        = string
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  default     = "10.0.0.0/16"
  type        = string
}

variable "vpc_azs" {
  description = "A list of availability zones in the region"
  default     = ["us-east-2a", "us-east-2b"]
  type        = list(string)
}

variable "private_subnets" {
  description = "A list of private subnets inside the VPC"
  default     = ["10.0.0.0/24", "10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  type        = list(string)
}

variable "public_subnets" {
  description = "A list of public subnets inside the VPC"
  default     = ["10.0.4.0/24", "10.0.5.0/24"]
  type        = list(string)
}

variable "instance_ami" {
  description = "The AMI to use for the EC2 instance"
  default     = "ami-09d4fd64c23f3a750"
  type        = string
}