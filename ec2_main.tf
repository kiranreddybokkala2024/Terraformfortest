provider "aws" {
  region = "us-east-1"
  access_key = "AKIA6ODU3AVWRAICEGGM"
  secret_key = "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"
}

resource "aws_instance" "nginx_instance" {
  ami           = "ami-0ac4dfaf1c5c0cce9" 
  instance_type = "t2.micro"
  subnet_id     = "subnet-0275bf6852fb6996f"
  vpc_security_group_ids = ["sg-06219e258f3aeec4b"]
  key_name = "terraform_key"
  tags = {
    Name = "NginxInstance"
  }
}

