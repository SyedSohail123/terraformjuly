variable "region" {
    type = string
    default = "us-west-2"
}

variable "ntier_vpc_info" {
    type = object ({
        vpc_cidr = string,
        subnet_names = list(string),
        subnet_azs = list(string)
    })
    default = {
        vpc_cidr = "192.168.0.0/16",
        subnet_azs = ["a", "b", "a", "b"],
        subnet_names = ["app1", "db1", "app2", "db2"]
    }
}