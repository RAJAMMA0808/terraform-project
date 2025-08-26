module "vpc" {
  source      = "../../modules/vpc"
  environment = "dev"
}

module "ec2" {
  source      = "../../modules/ec2"
  subnet_id   = module.vpc.subnet_id
  environment = "dev"
}

module "rds" {
  source      = "../../modules/rds"
  environment = "dev"
}
