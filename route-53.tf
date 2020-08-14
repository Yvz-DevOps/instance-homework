resource "aws_route53_record" "www" {
  zone_id = "Z055198750KNUH6D2J7K"
  name    = "www.hyavuz.com"
  type    = "A"
  ttl     = "60"
  records = ["${aws_instance.web.public_ip}"]
}
