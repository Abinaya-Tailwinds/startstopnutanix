# To start or stop the VM
resource "nutanix_vm_power_state" "vm_state_change" {
  vm_uuid    = var.vm_uuid
  transition = var.vm_state  # "ON" or "OFF"
}

# Sleep for 120s to allow state transition to complete
resource "time_sleep" "wait_after_state_change" {
  depends_on      = [nutanix_vm_power_state.vm_state_change]
  create_duration = "120s"
}

# Fetch VM details after state change
data "nutanix_vm" "target_vm" {
  depends_on = [time_sleep.wait_after_state_change]
  id         = var.vm_uuid
}

