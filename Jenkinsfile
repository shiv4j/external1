pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/shiv4j/week5.git', branch: 'master'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    def customImage = docker.build("week5:latest")
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                script {
                    docker.image("week5:latest").run("-d -p 8084:3000")
                }
            }
        }
    }
}

