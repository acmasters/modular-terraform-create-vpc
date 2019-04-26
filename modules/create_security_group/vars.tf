variable "vpc_id" {
  description = "vpc ID"
  default = ""
}
variable "region" {
    default = "us-east-1"
}
variable "sg_name" {
  description = "security groups vpc"
  default = "sg-name"
}
variable "service" {
  description = "Service VPC"
  default = "service-name"
}

variable "area" {
    description = "Area"
    default = "area-name"
}   

variable "system" {
    description = "System VPC"
    default = "system-name"  
}