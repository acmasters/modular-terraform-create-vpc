# Terraform state in S3 AWS
terraform {
  backend "s3" {
    bucket = "/terraform-state"
    key    = "vpc/private/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" { 
    region = "${var.region}"
}

# Define the private subnet
resource "aws_subnet" "private-subnet-a" {
  vpc_id = "${var.vpc_id}"
  cidr_block = "${var.private_subnet_cidr[0]}"
  availability_zone = "${var.availability_zone[0]}"

 # tags
  tags = {
    Name = "${var.private_subnet_name}-a"
    Service = "${var.service}"
    Area    = "${var.area}"
    System  = "${var.system}"
  }
}
# Define the private subnet
resource "aws_subnet" "private-subnet-b" {
  vpc_id = "${var.vpc_id}"
  cidr_block = "${var.private_subnet_cidr[1]}"
  availability_zone = "${var.availability_zone[1]}"

 # tags
  tags = {
    Name = "${var.private_subnet_name}-b"
    Service = "${var.service}"
    Area    = "${var.area}"
    System  = "${var.system}"
  }
}
