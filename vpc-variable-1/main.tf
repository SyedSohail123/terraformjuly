resource "aws_vpc" "ntier" {
    cidr_block = var.ntier_vpc_cidr
    tags = {
        Name = "ntier"
    }  
}