pipeline {
  agent any
  stages {
    stage('cleanup') { 
      steps {
        sh 'docker system prune -a --volumes --force'
      }
    }
    stage('build image') {
      steps {
        sh 'docker build -t Jenkins-by/jenkins-example-ghcr:8.5-204 .'
      }
    }
  }
}
