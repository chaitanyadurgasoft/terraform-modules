module "dev_nat_gw" {
  source           = "../modules/nat"
  Public_subnet_id = module.dev_vpc.PublicSubnet_1
  vpc_name         = module.dev_vpc.vpc_name

}