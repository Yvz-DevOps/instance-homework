output "ID" {
  value       = "${aws_instance.web.id}"
}

output "KEYNAME" {
  value       = "${aws_instance.web.key_name}"
}

output "PUB-IP" {
  value       = "${aws_instance.web.public_ip}"
}

output "ARN" {
  value       = "${aws_instance.web.arn}"
}

output "PUB-DNS" {
  value       = "${aws_instance.web.public_dns}"
}

output "message" {
  value       = "${login to wordpress and change password}"
}
