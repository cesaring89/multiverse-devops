variable "bucket_prefix" {
    type        = string
    description = "(required since we are not using 'bucket') Creates a unique bucket name beginning with the specified prefix. Conflicts with bucket."
    default     = ""
}
variable "acl" {
    type        = string
    description = "(Optional) The canned ACL to apply. Defaults to private. Conflicts with grant."
    default     = "private"
}
variable "versioning" {
    type        = bool
    description = "(Optional) A state of versioning."
    default     = true
}
variable "target_bucket" {
    type        = string
    description = "(Required) The name of the bucket that will receive the log objects."
    default     = ""
}
variable "target_prefix" {
    type        = string
    description = "(Optional) To specify a key prefix for log objects."
    default     = "log/"
}
variable "kms_master_key_id" {
    type        = string
    description = "(optional) The AWS KMS master key ID used for the SSE-KMS encryption. This can only be used when you set the value of sse_algorithm as aws:kms. The default aws/s3 AWS KMS master key is used if this element is absent while the sse_algorithm is aws:kms."
    default     = "aws/s3"
}
variable "sse_algorithm" {
    type        = string
    description = "(required) The server-side encryption algorithm to use. Valid values are AES256 and aws:kms"
    default     = "aws:kms"
}
variable "tags" {
    type        = map
    description = "(Optional) A mapping of tags to assign to the bucket."
    default     = {
        environment = "prod"
        terraform   = "true"
    }
}
variable "hash_key" {
    type        = string
    description = "(required) The AWS KMS master key ID used for the SSE-KMS encryption. This can only be used when you set the value of sse_algorithm as aws:kms. The default aws/s3 AWS KMS master key is used if this element is absent while the sse_algorithm is aws:kms."
    default     = "aws/s3"
}

variable "table_name" {
  description = "Dynamodb table name (space is not allowed)"
  default = "my-first-test-table"
}

variable "table_billing_mode" {
  description = "Controls how you are charged for read and write throughput and how you manage capacity."
  default = "PAY_PER_REQUEST"
}
variable "environment" {
  description = "Name of environment"
  default = "test"
}