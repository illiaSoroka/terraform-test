resource "aws_iam_user" "bob" {
  name = "bob"
  tags = {
  tag-key = "Dev"
  }
}

resource "aws_iam_group" "devops" {
  name = "devops"
}