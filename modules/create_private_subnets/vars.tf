#region
variable "region" {
    default = "us-east-1"
}
#vpc_id
variable "vpc_id" {
   default = ""  
}

# subnet private
variable "private_subnet_cidr" {
  type = "list"
  # Define private ranges
  default = ["10.0.0.0/24", "10.1.0.0/24"]
}
# subnet private name
variable "private_subnet_name" {
  default = "private_subnet_name"
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