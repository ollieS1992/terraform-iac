#aws provider
provider "aws" {
    region      = var.region
    profile     = "terraform"
  }

#vpc creation from module
module "vpc" {
  source                            = "../Modules/VPC"
  region                            = var.region
  project_name                      = var.project_name
  vpc_cidr                          = var.vpc_cidr
  public_subnet_az1_cidr            = var.public_subnet_az1_cidr
  public_subnet_az2_cidr            = var.public_subnet_az2_cidr
  private_app_subnet_az1_cidr       = var.private_app_subnet_az1_cidr
  private_app_subnet_az2_cidr       = var.private_app_subnet_az2_cidr
  private_data_subnet_az1_cidr      = var.private_data_subnet_az1_cidr
  private_data_subnet_az2_cidr      = var.private_data_subnet_az2_cidr

}

module "EC2" {
  source                            = "../Modules/EC2"
  vpc_id                            = module.vpc.vpc_id 
  sec_rule1_inbound_port            = var.sec_rule1_inbound_port
  sec_rule1_outbound_port           = var.sec_rule1_outbound_port
  sec_rule1_protocol                = var.sec_rule1_protocol
  sec_rule1_description             = var.sec_rule1_description
  sec_rule2_inbound_port            = var.sec_rule2_inbound_port
  sec_rule2_outbound_port           = var.sec_rule2_outbound_port
  sec_rule2_protocol                = var.sec_rule2_protocol
  sec_rule2_description             = var.sec_rule2_description
  ec2_1_subnet                      = module.vpc.private_app_subnet_az1
  ec2_instance_type                 = var.ec2_instance_type
  instance_count                    = var.instance_count  
}

module "Cloudwatch" {
  source                            = "../Modules/Cloudwatch"
  instance_ids                      = module.EC2.instance_ids
  
}
module "aws_cloudwatch_dashboard" {
  source                            = "../Modules/Cloudwatch_Dashboard"
  instance_ids                      = module.EC2.instance_ids
  }