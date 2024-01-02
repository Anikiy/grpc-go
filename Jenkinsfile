pipeline {
  agent any
  stages ('protos') {
    stage('build') {
        agent {
            docker {
                image 'uivmm/taskfile'
                reuseNode true
            }
        }
      steps {
          dir("protos/") { // Переходим в папку protos
              sh 'task generate' // Собираем мавеном бэкенд
          }
        }

    }
  }

}
