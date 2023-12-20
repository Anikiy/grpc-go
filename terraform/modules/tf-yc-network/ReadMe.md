# Название модуля
modules/tf-yc-network
## Провайдер
source  = "yandex-cloud/yandex"
version = ">= 0.87.0"
## Параметры 
network_zone
## Входящие ресурсы
data "yandex_vpc_network"
data "yandex_vpc_subnet"