provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "eu-west-3"
}

resource "aws_instance" "example" {
  ami           = "ami-c1cf79bc"
  instance_type = "t2.micro"
}

resource "aws_eip" "ip" {
  instance = "${aws_instance.example.id}"
}

variable access_key {}
variable secret_key {}