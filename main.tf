provider "aws" {
  region     = "us-east-1"
  access_key = "AKIATSDWAHIOW23B2UE4"
  secret_key = "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"
}

resource "aws_instance" "my-server" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
}