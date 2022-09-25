module "dev_ec2" {
  source      = "../modules/compute"
  environment = module.dev_vpc.environment
  amis = {
    "us-east-1" = "ami-08c40ec9ead489470"
    "us-east-2" = "ami-097a2df4ac947655f"
    "eu-west-2" = "ami-0f540e9f488cfa27d"
  }
  region        = var.region
  instance_type = "t2.micro"
  key_name      = "LONDON-NOON-KEY"
  PublicSubnet  = module.dev_vpc.PublicSubnet
  PrivateSubnet = module.dev_vpc.PrivateSubnet
  sg_id         = module.dev_sg.sg_id
  vpc_name      = module.dev_vpc.vpc_name
  depends_on = [
    module.dev_nat_gw.natgwid,
    module.dev_elb.elb_listner
  ]

}