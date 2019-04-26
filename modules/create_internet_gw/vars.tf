#region
variable "region" {
    default = "us-east-1"
}
#internet_gw_name
variable "internet_gw_name" {
    default = "internet_gateway name"
}
#vpc id
variable "vpc_id" {
   default = ""  
}
variable "service" {
   default = "service-name"
}

variable "area" {
    default = "area_name"
}   

variable "system" {
    default = "system_name"  
}