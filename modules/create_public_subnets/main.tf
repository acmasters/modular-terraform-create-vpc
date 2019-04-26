terraform {
  backend "s3" {
    bucket = "/terraform-state"
    key    = "vpc/public/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" { 
    region = "${var.region}"
}

# Define the public subnet
resource "aws_subnet" "public-subnet-a" {
  vpc_id = "${var.vpc_id}"
  cidr_block = "${var.public_subnet_cidr[0]}"
  availability_zone = "${var.availability_zone[0]}"

 # tags
  tags = {
    Name = "${var.public_subnet_name}-a"
    Service = "${var.service}"
    Area    = "${var.area}"
    System  = "${var.system}"
  }
}
# Define the public subnet
resource "aws_subnet" "public-subnet-b" {
  vpc_id = "${var.vpc_id}"
  cidr_block = "${var.public_subnet_cidr[1]}"
  availability_zone = "${var.availability_zone[1]}"

 # tags
  tags = {
    Name = "${var.public_subnet_name}-b"
    Service = "${var.service}"
    Area    = "${var.area}"
    System  = "${var.system}"
  }
}
