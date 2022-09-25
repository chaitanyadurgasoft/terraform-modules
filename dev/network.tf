module "dev_vpc" {
  source       = "../modules/network"
  vpc_cidr     = "10.100.0.0/16"
  vpc_name     = "Dev_Vpc"
  igw          = "Dev_Igw"
  Public_cidr  = ["10.100.1.0/24", "10.100.2.0/24", "10.100.3.0/24"]
  Private_cidr = ["10.100.10.0/24", "10.100.20.0/24", "10.100.30.0/24"]
  azs          = ["eu-west-2a", "eu-west-2b", "eu-west-2c"]
  environment  = "dev"
  natgw_id     = module.dev_nat_gw.natgwid
}