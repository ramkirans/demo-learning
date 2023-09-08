#create required plugin and provider to connect to aws

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

resource "aws_instance" "my_ec2_instance" {
	ami = "ami-053b0d53c279acc90"
	instance_type = "t2.micro"
	tags = {
		Name = "instance_from_terraform"
}
} 
#aws s3 bucket 
resource "aws_s3_bucket" "my_s3_bucket" {
# resource aws is provider s3 bucket is the type ,my s3 bucket is the name of the resource
	bucket = "practice-bucket-qw12"
	tags = {
		Name = "practice-bucket-qw12"
		Environment = "Dev"
}
}

#if you need public ip to display 
output "ec2_public_ips" {
	value = aws_instance.my_ec2_instance.public_ip
}

