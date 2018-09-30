pipeline {
    agent {
        docker {
            image 'node:8-alpine'
            args '--name myblog -p 8080:8080' 
        }
    }
    environment {
        CI = 'true'
    }
    stages {
        stage('Build') { 
            steps {
                sh 'npm install' 
            }
        }
        stage('Deliver') { 
            steps {
                sh 'npm start' 
            }
        }
    }
}