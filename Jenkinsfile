pipeline{
    agent any
    stages {
        stage("Building the docker image") {
            steps {
                script {
                    sh 'docker build -t simple-web-app:1.0 .'
                }
            }
        }
        stage("Deploying the docker image") {
            steps {
                script {
                    sh 'docker run -d -p 80:80 simple-web-app:1.0'
                }
            }
        }
    }
}