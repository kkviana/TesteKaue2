pipeline {
  agent any
  stages {

    stage('Build') {
        steps {
        echo "N�mero do Build: ${env.BUILD_NUMBER}" 
        }
    }
    
    stage('Publish') {
        steps {
            echo "N�mero do Build: ${env.BUILD_NUMBER}"
			bat 'iscc /dMyAppVersion="1.1" /Qp /O"C:\\Teste" /F"INSTALL SINCA" "C:\\ProgramData\\Jenkins\\.jenkins\\workspace\\testegit\\teste.iss"'
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