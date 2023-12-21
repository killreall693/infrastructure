resource "yandex_compute_instance" "backend" {
    name = "backend"
    zone = var.zone
    platform_id = var.platform_id
    resources {
        cores  = 2
        memory = var.memory
    }
    scheduling_policy {
        preemptible = var.preemptible
    }
    boot_disk {
        initialize_params {
            image_id = var.image_id
        }
    }

    network_interface {
    subnet_id = yandex_vpc_subnet.subnet_terraform.id
    nat       = true
  }

    metadata = {
        user-data = var.user_data
    }
}

resource "yandex_compute_instance" "frontend" {
    name = "frontend"
    zone = var.zone
    platform_id = var.platform_id
    resources {
        cores  = 2
        memory = var.memory
    }
    scheduling_policy {
        preemptible = var.preemptible
    }
    boot_disk {
        initialize_params {
            image_id = var.image_id
        }
    }

    network_interface {
    subnet_id = yandex_vpc_subnet.subnet_terraform.id
    nat       = true
  }

    metadata = {
        user-data = var.user_data
    }
}

resource "yandex_vpc_network" "network_terraform" {
  name = "net_terraform"
}
 
resource "yandex_vpc_subnet" "subnet_terraform" {
  name           = "sub_terraform"
  zone           = "ru-central1-a"
  network_id     = yandex_vpc_network.network_terraform.id
  v4_cidr_blocks = ["192.168.15.0/24"]
}


