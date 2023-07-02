variable "region" {
  type = string
  default = "us-west-2"
  description = "Enter a region to create resources"
}

variable "ntier_vpc_cidr" {
  type = string
  default = "192.168.0.0/22"
  description = "Enter vpc range"
}