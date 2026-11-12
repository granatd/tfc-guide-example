# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

output "instance_ami" {
  value = aws_instance.ubuntu.ami
}

output "instance_arn" {
  value = aws_instance.ubuntu.arn
}

output "instance_hostname" {
  description = "Instance Name"
  value       = aws_instance.ubuntu.tags.Name
}

output "aws_region" {
  value = aws.region
}

output "instance_subnet" {
  value = aws_instance.app_server.subnet_id
}
