  /*
“Docker-outside-of-Docker”: runs a Docker-based build by connecting a Docker client inside the pod to the host daemon.
*/
pipeline {
    agent none
    stages {
podTemplate(yaml: '''
              apiVersion: v1
              kind: Pod
              spec:
                containers:
                - name: docker
                  image: docker:19.03.1
                  command:
                  - sleep
                  args:
                  - 99d
                  volumeMounts:
                  - name: dockersock
                    mountPath: /var/run/docker.sock
                volumes:
                - name: dockersock
                  hostPath:
                    path: /var/run/docker.sock
                - name: sonar
                  image: sonarqube:latest
                  command:
                  - sleep
                  args:
                  - 99d
                  volumeMounts:
                  - name: dockersock
                    mountPath: /var/run/docker.sock
                volumes:
                - name: dockersock
                  hostPath:
                    path: /var/run/docker.sock

''') {
  node(POD_LABEL) {
    stage('Build a Golang project') {
      git url: 'https://github.com/Anikiy/grpc-go', branch: 'main'
        container('docker') {
        sh 'ls -la'
        sh 'docker info'
        sh 'cd go-pet/sso && docker build --build-arg VERSION=1.0 --tag go-auth:1.0 .'
        
      }
    }
    stage('Test') {
      git url: 'https://github.com/Anikiy/grpc-go', branch: 'main'
        container('sonar')
    }
}
}
}
}