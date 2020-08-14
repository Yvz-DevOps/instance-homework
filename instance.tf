resource "aws_instance" "web" {
  #count = 10
  ami           = "aami-0873b46c45c11058d"
  instance_type = "t2.large"
  associate_public_ip_address = "true"
  key_name      = "${aws_key_pair.oregonkey.key_name}"
  #user_data     = "${file("userdata.sh")}"
  vpc_security_group_ids = ["${aws_security_group.allow_ssh.id}"]
  availability_zone = "us-west-2"
}




