terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.3"
    }

    terraform = {
      source = "terraform.io/builtin/terraform"
    }
  }
}

variable "prefix" {
  type = string
}

variable "floor" {
  type = number
}

resource "random_integer" "instances" {
  min = var.floor
  max = var.floor * 3
  keepers = {
    floor = var.floor
  }
}

resource "terraform_data" "results" {
  for_each = toset([for i in range(random_integer.instances.result): tostring(i)])
  input = "new-${var.prefix}"
}

resource "random_pet" "pets" {
  for_each = terraform_data.results
  prefix = "#{var.prefix}-"
}
