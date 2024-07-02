provider "aws" {
  region  = "us-east-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-024ebc7de0fc64e44"
  instance_type = "t2.micro"

  tags = {
    Name = "AppServerInstance"
  }
}

resource "aws_instance" "web_server" {
  ami           = "ami-024ebc7de0fc64e44"
  instance_type = "t2.micro"

  tags = {
    Name = "WebServerInstance"
  }
}
