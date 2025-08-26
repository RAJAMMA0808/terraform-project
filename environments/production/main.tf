module "vpc" {
  source      = "../../modules/vpc"
  environment = "prod"
}

module "ec2" {
  source      = "../../modules/ec2"
  subnet_id   = module.vpc.subnet_id
  environment = "prod"
}

module "rds" {
  source      = "../../modules/rds"
  environment = "prod"
}
