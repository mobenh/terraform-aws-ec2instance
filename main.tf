resource "aws_instance" "my-server" {
  ami = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  tags = {
    Name = "ubuntu"
  }
}
