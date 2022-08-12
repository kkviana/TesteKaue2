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
			bat 'iscc /dMyAppVersion="VERSAO" /Qp /O"C:\Teste" /F"INSTALL SINCA AUT" "C:\Users\kaue\Documents\GitHub\Instalador.Sinca\sem exe.iss"'
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