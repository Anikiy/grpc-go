pipeline {
  agent any
  stages {

    stage('Stage 1') {
      steps {
        script {
          echo 'hello'
          git branch: 'main', credentialsId: 'ssh-key', url: 'https://github.com/Anikiy/grpc-go'
        }
      }
    }
  }

}
