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
			bat 'iscc /dMyAppVersion="1.1" /Qp /O"\\\\servidorhs\\TRANSFERENCIA\\SINCAs\\Instalador" /F"INSTALL SINCA" "C:\\ProgramData\\Jenkins\\.jenkins\\workspace\\testegit\\sem exe.iss"'
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