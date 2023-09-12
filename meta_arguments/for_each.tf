#This is an example for- for each list
terraform {
	required_providers {
	aws = {
	source = "hashicorp/aws"
	version = "~> 4.16"
}
}
	required_version = ">= 1.2.0"

}

provider "aws" {
	region = "us-east-1"
}
locals {
	instances = toset ([ "vk",rk])
}

resource "aws_instance" "my_ec2_instance" {
	for_each = local.instances
	ami = "ami-053b0d53c279acc90"
	instance_type = "t2.micro"
	tags = {
		Name = each.key
}
} 
