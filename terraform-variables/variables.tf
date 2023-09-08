#1st line is called variable block
#Variable "variable name" <--this is the format for variable
#access these variables in main.tf

variable "filename" {
	default = "/home/ubuntu/terraform_course/terraform-variables/devops_automated.txt"
}

variable "content" {
	default = "This is auto generated from a variable"

}

#another method of using variable

variable "devops_trainer" {}

#map concept

variable "content_map" {
type = map 
default = {
"content1" = "This is content 1"
"content2" = "This is content 2"
}
}

#list concept

variable "file_list" {
type = list
default = [ "/home/ubuntu/terraform_course/terraform-variables/file_1.txt" ,"/home/ubuntu/terraform_course/terraform-variables/file_2.txt" ]
}

#object concept 

variable "aws_ec2_object" {
  type = object ({
	name = string 
	instance = number
	keys = list(string) 
	ami = string
})

default = {
	name = "test_ec2_instance"
	instance = 4
	keys = [ "key1.pem","key2.pem" ]
	ami = "ubuntu-asdf"

}
}

