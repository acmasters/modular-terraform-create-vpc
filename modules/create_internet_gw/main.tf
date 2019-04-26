# Terraform State in S3 AWS
terraform {
  backend "s3" {
    bucket = "/terraform-state"
    key    = "vpc/igw/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" { 
    region = "${var.region}"
}

#Define the internet gateway
resource "aws_internet_gateway" "gw" {
  vpc_id = "${var.vpc_id}"

  # tags
  tags = {
    Name = "${var.internet_gw_name}"
    Service = "${var.service}"
    Area    = "${var.area}"
    System  = "${var.system}"
  }
}