variable "username" {}
variable "password" {}
variable "endpoint" {}
variable "portno" {
  default = 9440
}
variable "vm_uuid" {
  description = "UUID of the Nutanix VM"
}
variable "vm_state" {
  description = "Desired power state: ON or OFF"
  type        = string
}

