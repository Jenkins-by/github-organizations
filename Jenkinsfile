pipeline {
  agent any
  /*
  tools {
    node 'nodejs_12_latest'
  }
  */
  tools {
    docker 'docker_latest'
  }
  options {
    timeout(time: 1, unit: 'HOURS')
  }
  stages {
    stage('run on main branch') { 
      when {
        beforeAgent true
//        branch 'main'
      }
      steps {
        nodejs(nodeJSInstallationName: 'nodejs_12_latest') {
          sh 'node -v'
        }
      }
    }
    stage('hello world') {
      steps {
        echo 'Hello World'
      }
    }
    stage('docker build') {
      steps {
        sh '''
          npm run bootstrap
          npm run lint
          npm run test
          docker build . -t telegram_bot:0.1'
        '''
      }
    }
  }
}
