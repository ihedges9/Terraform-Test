# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

provider "aws" {
  region = var.region
}

data "aws_ami" "windows" {
  most_recent = true

  filter {
    name   = "name"
    values = ["windows/images/hvm-ssd/windows-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "ubuntu" {
  ami           = data.aws_ami.windows.id
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}
