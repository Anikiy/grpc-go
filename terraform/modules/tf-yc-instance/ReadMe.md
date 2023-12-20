# Название модуля
modules/tf-yc-instance
## Провайдер
source  = "yandex-cloud/yandex"
version = ">= 0.87.0"
backend "s3"
## Параметры 
zone
platform_id
image_id
subnet_id
## Входящие ресурсы
yandex_compute_instance
## Исходящий ресурс 
default ВМ (image=ubunut,)