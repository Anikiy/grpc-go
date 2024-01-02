pipeline {
  agent { label 'maven' }
  stages ('protos') {
    stage('build') {
            steps {
                sh 'mvn --version'
            }

    }
  }

}
