resource "aws_instance" "my-server" {
  ami           = data.aws_ami.std_ami.id
  instance_type = "t2.micro"
  tags = {
    Name = "myInstance"
  }
}

# resource "aws_instance" "my-server2" {
#   ami           = data.aws_ami.std_ami.id
#   instance_type = "t2.micro"
#   tags = {
#     Name = "myInstance"
#   }
# }

# resource "aws_instance" "my-server3" {
#   ami           = data.aws_ami.std_ami.id
#   instance_type = "t2.micro"
#   tags = {
#     Name = "myInstance"
#   }
# }