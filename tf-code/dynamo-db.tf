resource "aws_dynamodb_table" "my_first_table" {
  name        = "${var.table_name}"
  billing_mode = "${var.table_billing_mode}"
  hash_key       = "${var.hash_key}"
  attribute {
    name = "${var.hash_key}"
    type = "S"
  }
   tags = var.tags
}