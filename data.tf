# get the most recent ami if for the Amazon Linux ami
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
