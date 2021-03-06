resource "aws_instance" "web" {
  #count = 10
  ami           = "ami-0873b46c45c11058d"
  instance_type = "t2.large"
  associate_public_ip_address = "true"
  key_name      = "${aws_key_pair.oregonkey.key_name}"
  user_data     = "${file("userdata.sh")}"
  vpc_security_group_ids = [
    "${aws_security_group.allow_ssh.id}",
    "${aws_security_group.allow_httpd.id}"
    ]
  availability_zone = "us-west-2a"
  
  
    tags = {
        Name = "HelloWorld"
        Env = "Development"
        Client = "panera_bread"
        Team = "DevOps"
        Created_by = "Yavuz"
    }
}




