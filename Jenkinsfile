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
			bat 'iscc /dMyAppVersion="1.0" /O"C:\Teste" /F"INSTALL SINCA AUT" "C:\Users\kaue\Documents\GitHub\Instalador.Sinca\sem exe.iss"'
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