resource "aws_key_pair" "class5" {
  key_name = "class5"
  public_key = file("~/.ssh/id_rsa.pub")
}
