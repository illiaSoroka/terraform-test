
resource "aws_key_pair" "class5" {
  key_name = "class5"
  public_key = file("~/.ssh/id_rsa.pub")
}


module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  count = var.region == "california" ? 1 : 0


  name = "my-vpc"
  cidr = "10.0.0.0/16"

  azs             = [
    data.aws_availability_zones.available.names[0],
    data.aws_availability_zones.available.names[1],
    data.aws_availability_zones.available.names[1],
  ]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}

module "vpc-california" {
  source = "terraform-aws-modules/vpc/aws"
  count = var.region == "california" ? 0 : 1


  name = "my-vpc"
  cidr = "10.0.0.0/16"

  azs             = [
    data.aws_availability_zones.available.names[0],
    data.aws_availability_zones.available.names[1],
  ]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24",]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}

