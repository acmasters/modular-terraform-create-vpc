terraform {
  backend "s3" {
    bucket = "/terraform-state"
    key    = "vpc/terraform.tfstate"
    region = "us-east-1"
  }
}
provider "aws" { 
    region = "${var.region}"
}

resource "aws_vpc" "main" {

  cidr_block                       = "${var.vpc_cidr_block}"
  instance_tenancy                 = "${var.instance_tenancy}"
  enable_dns_hostnames             = "${var.enable_dns_hostnames}"
  enable_dns_support               = "${var.enable_dns_support}"

  tags = {
    Name = "${var.vpc_name}"
    Brand   = "${var.brand}"
    Service = "${var.service}"
    Area    = "${var.area}"
    System  = "${var.system}"
  }
}

resource "aws_vpc_ipv4_cidr_block_association" "secondary_cidr_blocks" {
    vpc_id = "${aws_vpc.main.id}"
    cidr_block = "${var.secondary_cidr_blocks}"

  }
