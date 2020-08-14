provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "web" {
  ami           = "ami-0873b46c45c11058d"
  instance_type = "t2.large"
}
