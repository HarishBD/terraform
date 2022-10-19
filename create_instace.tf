provider "aws" {
  region     = "us-east-2"
  access_key = "AKIAVUG65NVQB6WWGICT"
  secret_key = "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"
}

resource "aws_instance" "us-east2" {
  ami           = "ami-0a59f0e26c55590e9"
  instance_type = "t2.micro"
}
