# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

output "instance_ami" {
  value = aws_instance.windows.ami
}

output "instance_arn" {
  value = aws_instance.windows.arn
}

