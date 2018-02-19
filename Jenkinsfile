pipeline {
    agent any
    stages{
        stage('Build Docker Image') {
            agent {
                dockerfile { 
                    reuseNode true                     
                    filename 'Dockerfile'
                    dir '.'
                    additionalBuildArgs '-t mongo'
                }
            }
            steps {
                echo 'ls'
            }
            }
		stage('create container'){
			 steps {
                 		sh 'docker run -d --name mongoBD mongo 5000:5000'
			
            	} 
        }
    }
    post {
        always {
            deleteDir()
        }
    }     
}
