# Предварительные условия 
 Ansible и Python3 установлены на узлах 

# ./ansible/
├── ansible.cfg // конфиг-файл                            
├── inventory                             
│   └── host.ini // список host                          
├── playbook.yml // список ролей                                  
└── roles                                    
    ├── dependencies // ставит зависимости (kubeadm,kubectl,kubelet,containerd, вкл.  модули ядра overlay, br_netfilter - Эти модули необходимы для обеспечения функциональности сетевого подключения и хранения данных в Kubernetes )                                             
    │   └── tasks                                  
    │       └── main.yml                                  
    ├── k8s_master // CNI-flannel                                  
    │   └── tasks                   
    │       └── main.yml                               
    └── k8s_work // добавляет no                               
        └── tasks
            └── main.yml                          

# Запуск playbook 

$ ansible-playbook playbook.yml



