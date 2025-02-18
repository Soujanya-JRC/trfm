resource "aws_route53_record" "expense" {
  count = 3
  zone_id = var.zone_id
  name    = "${var.instances[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.t1[count.index].private_ip]
}

resource "aws_route53_record" "frontend" {
  zone_id = var.zone_id
  name    = "${var.instances[2]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.t1[2].public_ip]
}