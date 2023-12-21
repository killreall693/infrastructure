variable platform_id {
  type = string
  description = "Platform identification"
  default = "standard-v1"
}

variable zone {
  type = string
  description = "Zone identification"
  default = "ru-central1-a"
}

variable preemptible {
  description = "virtual machine interruptibility"
  type = bool
  default = true
}

variable memory {
  description = "Memory capacity"
  type = number
  default = 2
}

variable subnet_id {
  description = "Subnet id"
  type = string
  default = ""
}

variable image_id {
  description = "Image id"
  type = string
  default = "fd85an6q1o26nf37i2nl"
}


variable "user_data" {
  description = "User data for cloud-config"
  type        = string
  default     = <<EOF
#cloud-config
users:
- name: student
  groups: sudo
  shell: /bin/bash
  sudo: ['ALL=(ALL) NOPASSWD:ALL']
  ssh_authorized_keys:
  - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIK5QFwMHMNUMKALwcQH1bG2wd/KPRz92Iib+oP+9BXpg
EOF
}

