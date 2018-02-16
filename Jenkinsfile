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
    }
    post {
        always {
            deleteDir()
        }
    }     
}