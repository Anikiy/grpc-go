# Предварительно: 

1. Установите интерфейс командной строки Yandex Cloud (https://cloud.yandex.ru/docs/cli/quickstart#install)
2. Создайте сервисный аккаунт 
$ yc iam service-account create --name <имя_сервисного_аккаунта>                                                     
3. Назначьте сервисному аккаунту роль                                                       
$ yc "service-name" "resource" add-access-binding "resource-name"|"resource-id" \
  --role "role-id" \
  --subject serviceAccount:"service-account-id"

"service-name" — название сервиса, на чей ресурс назначается роль, например resource-manager.                                     
"resource" — категория ресурса, например cloud.                                             
"resource-name" — имя ресурса. Вы можете указать ресурс по имени или идентификатору.                                         
"resource-id" — идентификатор ресурса.                                          
"role-id" — назначаемая роль, например resource-manager.clouds.owner.                                     
"service-account-id" — идентификатор сервисного аккаунта, которому назначается роль.                                      

4. Создайте авторизованный ключ для сервисного аккаунта и запишите его файл                                                           
yc iam key create \
  --service-account-id <идентификатор_сервисного_аккаунта> \
  --folder-name <имя_каталога_с_сервисным_аккаунтом> \
  --output key.json

service-account-id — идентификатор сервисного аккаунта.                                                                   
folder-name — имя каталога, в котором создан сервисный аккаунт.                                                    
output — имя файла с авторизованным ключом.                                                       

5.  Создайте профиль CLI для выполнения операций от имени сервисного аккаунта                                                 
$ yc config profile create <имя_профиля>

6. Задайте конфигурацию профиля:
                                                                                                             
$ yc config set service-account-key key.json                                                                           
$ yc config set cloud-id <идентификатор_облака>                                                                
$ yc config set folder-id <идентификатор_каталога>                                                                       

7. Добавьте аутентификационные данные в переменные окружения                                                         

export YC_TOKEN=$(yc iam create-token)                                                                  
export YC_CLOUD_ID=$(yc config get cloud-id)                                                                
export YC_FOLDER_ID=$(yc config get folder-id)                                                                 

# Создать кластер

$ cd terraform                                                                            
$ terraform init                                                                                    

# Затем проверьте, спланируйте и примените модули Terraform:

$ terraform validate                                                                        

$ terraform plan                                                                                           

$ terraform apply                                                                                                      


├── modules                                                                                                              
├── tf-yc-instance // создает виртуалки и                                                                           накопители                                                                                                                                                                                        └── tf-yc-network // настраивает сеть в облаке                                                                                                                                                                         