pipeline {
    agent any

    stages {

        stage('Build') {
            steps {
                sh 'docker build -t my-app .'
            }
        }

        stage('Run') {
            steps {
                sh 'docker run -d -p 3000:3000 my-app'
            }
        }

        stage('Deploy to K8s') {
            steps {
                sh 'kubectl apply -f deployment.yaml'
                sh 'kubectl apply -f service.yaml'
            }
        }
    }
}
