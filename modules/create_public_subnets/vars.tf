#region
variable "region" {
    default = "us-east-1"
}
variable "vpc_id" {
   default = "" 
}
# subnet public
variable "public_subnet_cidr" {
  type = "list"
  # define public ranges
  default = ["10.100.0.0/24","10.100.1.0/24"]
}
# subnet public name
variable "public_subnet_name" {
  default = "public_subnet_name"
}
# avaliability zones
variable "availability_zone" {
    type = "list"
    default = ["us-east-1a", "us-east-1b"] 
}
variable "service" {
  default = "service-name"
}

variable "area" {
    default = "area-name"
}   

variable "system" {
    default = "system-name"  
}