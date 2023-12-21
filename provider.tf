terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.104.0"
    }
  }
}

provider "yandex" {
  cloud_id                 = "b1g9adkpjs2p5efpmkk4"
  folder_id                = "b1g9tameckv2t3vst4v0"
  service_account_key_file = "authorized_key.json"
}