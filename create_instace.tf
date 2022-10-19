provider "aws" {
  region     = "us-east-2"
  access_key = "AKIAVUG65NVQKV4MEAZ3"
  secret_key = "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"
}

provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAVUG65NVQKV4MEAZ3"
  secret_key = "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"
  alias = "useast1"
}


resource "aws_instance" "us-east2" {
  ami           = "ami-0a59f0e26c55590e9"
  instance_type = "t2.micro"
}

resource "aws_instance" "us-east1" {
  ami           = "ami-0ee23bfc74a881de5"
  instance_type = "t2.micro"
provider = aws.useast1
}


resource "aws_s3_bucket" "firstbucket" {
  bucket = "my-tf-test-bucket-kdjaskjdhdhhd"

  tags = {
    Name        = "My bucket"
    Environment = "Dev-env"
  }
}
