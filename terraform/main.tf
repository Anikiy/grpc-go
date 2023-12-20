module "yandex_cloud_network" {
    source = "./modules/tf-yc-network"
} 
module "yandex_cloud_instance" {
    source = "./modules/tf-yc-instance"
}