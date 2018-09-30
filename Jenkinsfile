pipeline {
    agent {
        docker {
            image 'node:8-alpine'
            args '--rm --name myblog -p 8080:8080 -d -u root node:8-alpine' 
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