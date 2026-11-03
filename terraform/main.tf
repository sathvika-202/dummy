resource "aws_s3_bucket" "data" {
  bucket = "demo-company-data-bucket"
  acl    = "public-read"
}

resource "aws_security_group" "web" {
  name = "web-sg"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
