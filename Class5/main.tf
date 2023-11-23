resource "aws_key_pair" "class5" {
  key_name = "class5"
  public_key = file("~/.ssh/id_rsa.pub")
}
resource "aws_key_pair" "august23-test5" {
  key_name = "august23-test5"
  public_key = file("~/.ssh/id_rsa.pub")
  
}