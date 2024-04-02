variable "region" {
    description = "Region where AWS resources will be deployed"
    type = string
}
variable "project_name" {
    description = "name of the project"
    type = string
}
variable "vpc_cidr" {
    description = "The subnet for the VPC"
    type = string
}
variable "public_subnet_az1_cidr" {
    description = "The subnet for the public_subnet_az1"
    type = string
}
variable "public_subnet_az2_cidr" {
    description = "The subnet for public_subnet_az2"
    type = string
}
variable "private_app_subnet_az1_cidr" {
    description = "The subnet for private_app_subnet_az1"
    type = string
}
variable "private_app_subnet_az2_cidr" {
    description = "The subnet for private_app_subnet_az2_"
    type = string 
}
variable "private_data_subnet_az1_cidr" {
    description = "The subnet for private_ata_subnet_az1_"
    type = string 
}
variable "private_data_subnet_az2_cidr" {
    description = "The subnet for private_data_subnet_az2"
    type = string 
}