pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                script {
                    echo 'Building Docker image...'
                    // Replace this with actual Docker build command if needed
                    // sh 'docker build -t my-nodejs-appp-csed .'
                }
            }
        }
        stage('Test') {
            steps {
                script {
                    echo 'Running tests...'
                    // Replace this with actual test commands if needed
                    // sh 'npm test'
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    echo 'Deploying application...'
                    // Replace this with actual Docker run command if needed
                    // sh 'docker run -d -p 8080:3000 my-nodejs-appp-csed'
                }
            }
        }
    }
}
