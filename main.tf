provider "aws" {
  region  = "us-east-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-04df9ee4d3dfde202"
  instance_type = "t2.micro"

  tags = {
    Name = "AppServerInstance"
  }
}

resource "aws_instance" "web_server" {
  ami           = "ami-0f811217032cd31f7"
  instance_type = "t2.micro"

  tags = {
    Name = "WebServerInstance"
  }
}

}
