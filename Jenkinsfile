pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/mdabraralam/impart-buddies-eureka-server.git'
            }
        }
        
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Archive') {
            steps {
                archiveArtifacts artifacts: 'target/*.jar', fingerprint: true
            }
        }
    }
}
