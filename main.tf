provider "aws" {
  region     = "us-east-1"
  access_key = "Your-access-key"
  secret_key = "Your-seceret-key"
}

resource "aws_instance" "my-server" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  tags = {
    Name = "ubuntu"
  }
}
