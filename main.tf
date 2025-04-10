provider "aws" {
  region = "ap-southeast-1"
}


module "networking" {
  source = "git::https://github.com/vijayrajuyj1/stask-2.git//modules/networking?ref=add-vpc-subnets"
}


resource "aws_instance" "web1" {
  ami = "ami-065a492fef70f84b1"
  instance_type = "t2.micro"
  subnet_id = module.networking.public_subnet_id

  tags = {
    name="temp-ec2"
  }
}