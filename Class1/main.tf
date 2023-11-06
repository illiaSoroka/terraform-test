
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
    aws_iam_user.multiuser["lisa"].name,
    aws_iam_user.multiuser["bob"].name,
    aws_iam_user.multiuser["sam"].name,

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

# Create key_pair
resource "aws_key_pair" "august23" {
  key_name   = "august23"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_key_pair" "august23-california" {
	provider = aws.california
  key_name   = "august23-california"
  public_key = file("~/.ssh/id_rsa.pub")
}
