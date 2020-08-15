resource "aws_key_pair" "oregonkey" {
  key_name   = "oregonkey"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}

