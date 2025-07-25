terraform {
  required_providers {
    nutanix = {
      source = "nutanix/nutanix"
      # version = "1.9.5"
    }
  }
}

provider "nutanix" {
  username = var.username
  password = var.password
  endpoint = var.endpoint
  port     = var.portno
  insecure = true
}

