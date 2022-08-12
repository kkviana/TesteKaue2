pipeline {
  agent any
  stages {

    stage('Build') {
        steps {
        echo "Número do Build: ${env.BUILD_NUMBER}" 
        }
    }
    
    stage('Publish') {
        steps {
            echo "Número do Build: ${env.BUILD_NUMBER}"             
		}
    }

    
    stage('Clean') {
		when { equals expected: 'SUCCESS', actual: currentBuild.currentResult }
        steps {
            cleanWs()
        }
    }
  }
}