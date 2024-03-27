provider "aws" {
  region = "us-east-1"
}

variable "ami" {
  description = "AMI-ID of Instance"
  type = string
}

variable "instance_type" {
  description = "Size of Instance"
  type = string
}

module "aws_ec2" {
  source = "./modules/ec2_instance"
  ami = var.ami
  instance_type = var.instance_type
}
