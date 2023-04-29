terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = var.aws_region
}

resource "aws_key_pair" "my_key_pair" {
  key_name   = var.key_pair_name
  public_key = var.ssh_public_key
}

resource "aws_instance" "app_server" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = aws_key_pair.my_key_pair.key_name

  tags = {
    Name = var.instance_name
  }
}
