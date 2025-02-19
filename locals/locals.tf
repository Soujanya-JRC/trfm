locals {
  instance_type = "t3.micro"
  name = "${var.project}-${var.component}-${var.environment}"
}