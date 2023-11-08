# Create a new user Bob
resource "aws_iam_user" "bob" {
  name = "bob"
  tags = {
    tag-kay = "devOps"
  }
}

# Create a group sysusers
resource "aws_iam_group" "sysusers" {
  name = "sysusers" 
}


# Create a group-membership
resource "aws_iam_group_membership" "sysusers-team" {
  name = "sysusers-team" 

  users = [
    aws_iam_user.bob.name,
  ]

  group = aws_iam_group.sysusers
}

