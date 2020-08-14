resource "aws_ebs_volume" "web" {
    availability_zone = "us-west-2"
    size = 100
}


