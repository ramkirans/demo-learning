
resource "local_file" "devops" {
	filename = "/home/ubuntu/terraform_course/terraform_local/devops_automated.txt"
# filename = path where you want to create file and given filename .
	content = "I want to become devops engineer who knows Terraform"
} 

# example for multiple resources in terraform 

resource "random_string" "rand_str" {
length = 16
special = true
override_special = "~!$%^*()_+<>:?{}|"
}

output "rand_str" {

  value = random_string.rand_str[*].result
}


