resource "local_file" "devops" {
#	filename = "/home/ubuntu/terraform_course/terraform-variables/devops_test.txt"
#	content = "This is devops test file for practice"
#the below line is  map concept
	content = var.content_map[ "content1" ]
#the below line is list concept
	filename = var.file_list[0]
}

#Variable concept ,calliang variable in main file
resource "local_file" "devops_var" {
#	filename = var.filename
#format --> object.keyname  i.e var.filename  here in our example
#	content = var.content
#the below line is  map concept
	content = var.content_map[ "content2" ]


#the below line is list concept
	filename = var.file_list[1]
}
#another method of using variable ,export method

output "devops_trainer" {
value = var.devops_trainer
}
#aftr this run --> export TF_VAR_devops_trainer=Ram [ram or anything you want] ,then terraform apply


#object concept

output "aws_ec2_instance" {
value = var.aws_ec2_object 
}
