resource "aws_route53_record" "www" {
  zone_id = "Z06528912840OFLNFP3WA"
  name    = "www.hyavuz.com"
  type    = "A"
  ttl     = "5"
  records = ["${aws_instance.web.public_ip}"]
}
