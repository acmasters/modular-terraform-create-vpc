terraform {
  backend "s3" {
    bucket = "/terraform-state"
    key    = "vpc/security_group/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" { 
    region = "${var.region}"
}


# Define SGs for public subnet

resource "aws_security_group" "security_groups" {
  name = "${var.sg_name}"
  description = "Allow incoming HTTP Connections & ICMP"

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = -1
    to_port = -1
    protocol = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }
   egress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  vpc_id="${var.vpc_id}"

  #tags
  tags = {
    Name = "SG-Name"
    Service = "${var.service}"
    Area    = "${var.area}"
    System  = "${var.system}"
  }
}