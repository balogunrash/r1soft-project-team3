output "r1soft-instance-ami" {
  value = "${data.aws_ami.centos.id}"
}

output "r1soft-instance-ip" {
  value = "${aws_instance.centos.public_ip}"
}

output "username" {
  value = "${var.user}"
}

output "password" {
  value = "${var.password}"
}

output "efs-id" {
  value = "${aws_efs_file_system.my-efs.id}"
}

output "efs-dns-name" {
  value = "${aws_efs_file_system.my-efs.dns_name}"
}

