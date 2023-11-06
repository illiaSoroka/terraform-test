resource "aws_iam_user" "august23" {
  name = "august23"
  tags = {
  tag-key = "Dev"
  }
}

resource "aws_iam_group" "devops" {
  name = "devops"
}