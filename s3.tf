resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-7403850438503"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}