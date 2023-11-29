resource "aws_s3_bucket" "example" {
  bucket = "metudu-terraform-test-bucket"

  tags = {
    Name: var.s3-bucket-tag-name
  }
}