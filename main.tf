provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "web1" {
  ami = "ami-065a492fef70f84b1"
  instance_type = "t2.micro"

  tags = {
    name="temp-ec2"
  }
}