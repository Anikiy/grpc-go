  /*
“Docker-outside-of-Docker”: runs a Docker-based build by connecting a Docker client inside the pod to the host daemon.
*/
podTemplate(yaml: '''
              apiVersion: v1
              kind: Pod
              spec:
                containers:
                - name: uivmm/taskfile
                  image: uivmm/taskfile
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
    stage('protos') {
      git 'https://github.com/Anikiy/grpc-go'
       dir("/go-pet/protos") { 
        container('docker') {
        sh 'docker info '

      }
    }
  }
}
}