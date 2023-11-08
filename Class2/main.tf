# Finds ami
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

# Create ec2 instance
resource "aws_instance" "web" {
  ami             = data.aws_ami.ubuntu.id
  instance_type   = "t3.micro"
  key_name        = aws_key_pair.class2.key_name
  vpc_security_group_ids = [
    aws_security_group.class2-sec-group.id
    ]
  user_data = file("userdata.sh")
}


# Create ec2 key pair
resource "aws_key_pair" "class2" {
  key_name        = "class2-key"
  public_key      = file("~/.ssh/id_rsa.pub")
}

# Create ec2 security group

resource "aws_security_group" "class2-sec-group" {
  name        = "class2-sec-group"
  description = "Allow TLS inbound traffic"
  

  ingress {
    description      = "SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "HTTP"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

}