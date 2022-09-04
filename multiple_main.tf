provider "aws" {
  region     = "${var.region}"
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
}

resource "aws_instance" "project1" {

    count = 20

    ami = "ami-0729e439b6769d6ab"
    instance_type = "t2.micro"

    tags = {
      Name = "server-${count.index}"
    }
  
}
