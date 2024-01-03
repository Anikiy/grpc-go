  /*
“Docker-outside-of-Docker”: runs a Docker-based build by connecting a Docker client inside the pod to the host daemon.
*/
podTemplate(yaml: '''
              apiVersion: v1
              kind: Pod
              spec:
                containers:
                - name: golang
                  image: golang:latest
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
        container('golang') {
        sh 'pwd'
      }
  }
}
}