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

component "stack-two" {
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

component "stack-three" {
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

component "stack-four" {
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

component "stack-five" {
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

component "stack-six" {
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

component "stack-seven" {
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

component "stack-eight" {
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

component "stack-nine" {
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
