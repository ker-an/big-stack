required_providers {
  random = {
    source  = "hashicorp/random"
    version = "~> 3.3"
  }

  terraform = {
    source = "terraform.io/builtin/terraform"
  }
}

variable "prefix" {
  type = string
}

variable "floor" {
  type = number
}

provider "random" "main" {}
provider "terraform" "main" {}

component "stack" {
  for_each = toset([for i in range(20): tostring(i)])

  source = "./"
  inputs = {
    prefix = var.prefix
    floor  = var.floor
  }
  providers = {
    random    = provider.random.main
    terraform = provider.terraform.main
  }
}
