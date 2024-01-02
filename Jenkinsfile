pipeline {
  agent any
  stages ('protos') {
    stage('build') {
        agent {
                docker { 
                    image 'maven:3.9.6-eclipse-temurin-17-alpine' 
                    args  '-v /tmp:/tmp'    
                }
            }
            steps {
                sh 'mvn --version'
            }

    }
  }

}
