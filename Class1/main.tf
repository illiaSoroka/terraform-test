
# Create a user
resource "aws_iam_user" "august23" {
  name = "august23"
  tags = {
    tag-key = "Dev"
  }
}

# Create a group
resource "aws_iam_group" "devops" {
  name = "devops"
}

# Creates group membership
resource "aws_iam_group_membership" "devops-team" {
  name = "devops-team"

  users = [
    aws_iam_user.august23.name,
  ]

  group = aws_iam_group.devops.name
}

# Creates multiple users
resource "aws_iam_user" "multiuser" {
  name = each.key
  for_each = toset([
    "bob",
    "sam",
    "lisa",
  ])

}