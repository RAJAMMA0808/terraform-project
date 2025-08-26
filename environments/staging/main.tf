module "vpc" {
  source      = "../../modules/vpc"
  environment = "staging"
}

module "ec2" {
  source      = "../../modules/ec2"
  subnet_id   = module.vpc.subnet_id
  environment = "staging"
}

module "rds" {
  source      = "../../modules/rds"
  environment = "staging"
}
