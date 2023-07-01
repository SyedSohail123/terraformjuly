resource "aws_vpc" "ntier" {
    cidr_block = "192.168.0.0/22"
    tags = {
        Name = "ntier"
    }
}