pipeline {
  agent any
  stages ('protos') {
    stage('build') {
        agent {
            docker {
                image 'uivmm/taskfile'
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
