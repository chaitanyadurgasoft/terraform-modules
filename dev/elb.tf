module "dev_elb" {
  source         = "../modules/elb"
  nlbname        = "dev-nlb"
  subnets        = module.dev_vpc.PublicSubnet
  env            = module.dev_vpc.environment
  tgname         = "dev-nlb-tg"
  vpc_id         = module.dev_vpc.vpc_id
  PrivateServers = module.dev_ec2.Privateserver
}