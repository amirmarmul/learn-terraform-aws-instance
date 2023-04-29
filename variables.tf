variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-southeast-1"
}

variable "ami" {
  description = "ID of the AMI to provision. Default is Ubuntu Server 20.04 LTS (HVM)"
  type        = string
  default     = "ami-062550af7b9fa7d05"
}

variable "instance_type" {
  description = "Value of the type of the EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "ExampleAppServerInstance"
}