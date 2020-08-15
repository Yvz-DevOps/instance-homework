resource "aws_ebs_volume" "ebs" {
    availability_zone = "us-west-2"
    size = 100
}

resource "aws_volume_attachment" "ebs_att" {
    device_name = "/dev/sdc"
    volume_id = "${aws_ebs_volume.ebs.id}"
    instance_id = "${aws_instance.web.id}"
}



