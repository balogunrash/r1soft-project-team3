resource "aws_efs_file_system" "my-efs" {
  creation_token = "my-product"
  tags = "${var.tags}"
}


resource "aws_efs_mount_target" "my-mount" {
  file_system_id = "${aws_efs_file_system.my-efs.id}"
  subnet_id     = "${aws_subnet.public1.id}"
        security_groups = [
      "${aws_security_group.my-sg.id}"
    ]
}