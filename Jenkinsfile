pipeline {
  agent any
  stages {

    stage('Build') {
        steps {
        echo "N?mero do Build: ${env.BUILD_NUMBER}" 
        }
    }
    
    stage('Publish') {
        steps {
            echo "N?mero do Build: ${env.BUILD_NUMBER}"
			bat 'iscc /dMyAppVersion="1.0" /Qp /O"C:\\Teste" /F"INSTALL SINCA" "teste.iss"'
		}
    } 
  }
}