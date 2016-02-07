provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "ap-northeast-1"
}

resource "aws_instance" "sample" {
    ami = "ami-a31f27cd"
    instance_type = "t1.micro"
    tags {
        Name = "sample"
    }
}
