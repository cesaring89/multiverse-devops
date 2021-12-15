resource "aws_ecr_repository" "multiverse_repo" {
  name                 = "multiverse_repo"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}