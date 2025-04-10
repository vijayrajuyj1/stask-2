resource "aws_subnet" "sub1" {
    vpc_id = aws_vpc.myvpc.id
    availability_zone = "ap-southeast-1a"
    cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch = true

    tags = {
      name = "public-subnet"
    }
  
}