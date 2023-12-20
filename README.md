# Описание pet-project gRPC:
В репозитории используются модули Terraform для создания инфраструктуры, Ansible для установки Kubernetes и связанных с ним зависимостей, а также Helm для развертывания окружения разработки, тестирования и использования отдельных чартов для развертывания приложения go-pet.

# Обобщенное описание директорий

├── ansible // playbook для k8s кластера, модуль flannel  
├── chart // чарты gilab и go-auth    
├── go-pet // исходники go-auth     
└── terraform // модули terraform для работы в yandex-cloud      

В директориях более развернутое описание реализации всего проекта.
 



