terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"  #this is provider which will automate the running docker,install docker separately.
      version = "2.23.0"
    }
  }
}
#the above block will install docker in terraform

#provider block
provider "docker" {}

#resource block
resource "docker_image" "nginx" {

  name         = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx" {

  image = docker_image.nginx.latest
  name  = "nginx-tf"
  ports {

    internal = 80
    external = 80
  }
}
