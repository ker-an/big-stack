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

component "application_with_a_very_very_very_very_very_very_very_long_name" {
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
