# CONFIGS

variable "vpc_cidr_block" {
  description   = "cidr block"
  default   = "10.0.0.0/23"
}
variable "secondary_cidr_blocks" {
  description = "Public range VPC"
  default = "10.100.0.0/23" 
}

variable "enable_dns_hostnames" {
  default     = "false"
}

variable "enable_dns_support" { 
  default     = "true"
}

variable "instance_tenancy" {
  default     = "default"
}
variable "vpc_name" {
  default  = "vpc-name"
}

variable "brand" {
  default   = "brand-name"
}

variable "service" {
  default   = "service-name"  
}

variable "system" {
  default   = "system-name"
}

variable "area" {
  default   = "area-name"
}

variable "region" {
  default     = "us-east-1"
}
