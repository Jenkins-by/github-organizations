pipeline {
  agent any
  environment {
    GITHUB_TOKEN = credentials('push-to-ghcr')
  }
  stages {
    stage('cleanup') { 
      steps {
        sh 'docker system prune -a --volumes --force'
      }
    }
    stage('build image') {
      steps {
        sh 'docker build -t jenkins-by/jenkins-example-ghcr:8.5-204 .'
      }
    }
    stage('login to ghcr.io') {
      steps {
        sh 'echo $GITHUB_TOKEN_PSW | docker login ghcr.io -u $$GITHUB_TOKEN_USR --password-stdin'
      }
    }
  }
  post {
    always {
      sh 'docker logout'
    }
  }
}
