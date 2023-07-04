resource "aws_vpc" "ntier" {
  cidr_block = var.ntier_vpc_info.vpc_cidr
  tags = {
    cidr_block = var.ntier_vpc_info.vpc_cidr
    Name = "ntier"
  }
}

resource "aws_subnet" "ntier" {
    count = length(var.ntier_vpc_info.subnet_names)
    cidr_block = cidrsubnet(var.ntier_vpc_info.vpc_cidr,8,count.index)
    availability_zone = "${var.region}${var.ntier_vpc_info.subnet_azs[count.index]}"
    vpc_id = aws_vpc.ntier.id
    tags = {
      Name = var.ntier_vpc_info.subnet_names[count.index]
    }
    depends_on = [ 
        aws_vpc.ntier
         ]
}