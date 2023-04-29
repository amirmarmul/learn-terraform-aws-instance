variable "aws_region" {
  type    = string
  default = "ap-southeast-1"
}

variable "ami" {
  type    = string
  default = "ami-062550af7b9fa7d05"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "instance_name" {
  type    = string
  default = "Provisioned by Terraform"
}

variable "key_pair_name" {
  type    = string
  default = "amir-pc"
}

variable "ssh_public_key" {
  type    = string
  default = ""
}