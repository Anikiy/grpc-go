output "ip_address" {
    value = "${module.yandex_cloud_instance.ip_address}"
}

output "public_ip_address" {
    value = "${module.yandex_cloud_instance.public_ip_address}"
}