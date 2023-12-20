resource "yandex_compute_instance" "vm-1" {
    name = "auth"
    count = 2
    zone = var.zone 
    platform_id = var.platform_id
    # количество процессоров и оперативной памяти
    resources {
        cores  = var.core
        memory = var.memory
    }
    scheduling_policy {
    preemptible = var.preemptible
    }
    # Загрузочный диск:
    # здесь указывается образ операционной системы
    # для новой виртуальной машины
    boot_disk {
        initialize_params {
            image_id = var.image_id
        }
    }
    
    # Сетевой интерфейс:
    # нужно указать идентификатор подсети, к которой будет подключена ВМ
    network_interface {
        subnet_id = var.subnet_id
        nat       = var.nat
    }

    # Метаданные машины:
    # здесь можно указать скрипт, который запустится при создании ВМ
    # или список SSH-ключей для доступа на ВМ
    metadata = {
        user-data = "#cloud-config\nusers:\n  - name: auth\n    groups: sudo\n    shell: /bin/bash\n    sudo: ['ALL=(ALL) NOPASSWD:ALL']\n    ssh-authorized-keys:\n      ______"
    }

}   
resource "yandex_compute_disk" "empty-disk" {
    name = "empty-disk"
    size = var.size  
    type = var.type
    zone = var.zone
    }