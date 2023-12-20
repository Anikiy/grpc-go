variable "zone" {
    description = "yandex.zone"
    type  = string
    default = "ru-central1-a"
}

variable "platform_id" {
    description = "yandex.platform_id"
    type  = string
    default = "standard-v1"
}

variable "image_id" {
    description = "yandex.image_id"
    type  = string
    default = "______"
}

variable "subnet_id" {
    description = "yandex.subnet_id"
    type  = string
    default = "______"
}

variable "core" {
    description = "yandex.core"
    default = 2 
}

variable "memory" {
    description = "yandex.memory"
    default = 2 
}

variable "preemptible" {
    description = "yandex.preemptible"
    type  = string
    default = true
}

variable "nat" {
    description = "yandex.nat"
    type  = string
    default = true
}

variable "size" {
    description = "yandex.empty-disk"
    default = 100
}

variable "type" {
    description = "yandex.type"
    type  = string
    default = "network-hdd"
}