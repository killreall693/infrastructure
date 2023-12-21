module "tf-yc-network" {
  source = "./modules/network"
}

module "tf-yc-instance" {
  source = "./modules/instance"
}
