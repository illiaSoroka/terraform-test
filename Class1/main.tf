resource "aws_iam_user" "august23" {
  name = "august23"
  tags = {
  tag-key = "Dev"
  }
}

resource "aws_iam_group" "devops" {
  name = "devops"
}


resource "aws_iam_group_membership" "devops-team" {
  name = "devops-team"

  users = [
    aws_iam_user.august23.name,
  ]

  group = aws_iam_group.devops.name
}