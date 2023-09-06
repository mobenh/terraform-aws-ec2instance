provider "aws" {
  region     = "us-east-1"
}

data "aws_ami" "ubuntu" {
  most_recent = true
  owners = ["amazon"]
  filter {
    name =  "root-device-type"
    values = ["ebs"]
  }
  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "my-server" {
  ami = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  tags = {
    Name = "ubuntu"
  }
}
