resource "aws_ebs_volume" "myebs" {
    availability_zone = "us-west-2c"
    size = 100
}


resource "aws_volume_attachment" "ebs_att" {
    device_name = "/dev/sdc"
    volume_id = "${aws_ebs_volume.myebs.id}"
    instance_id = "${aws_instance.web.id}"
}

