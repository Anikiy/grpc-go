# ./chart/
├── gitlab // полный чарт гитлаба                                          
└── go-auth // чарт grpc-auth                                             


# gitlab 

- Напишите ваш домен в values и выберите стек инстансев для работы

# go-auth

- gRPC деплоит gitlab ci в файле "go-pet/sso/.gitlab-ci.yml"

# jenkinsci

- kubectl exec --namespace jenkins -it svc/jenkins -c jenkins -- /bin/cat /run/secrets/additional/chart-admin-password && echo (посмотреть pw admin)
- kubectl --namespace jenkins port-forward svc/jenkins 8080:8080 ( local )
- 