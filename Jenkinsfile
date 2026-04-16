pipeline {
    agent any

    stages {

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t subbulakshmisenthilmurugan/my-app .'
            }
        }

        stage('Push Docker Image') {
            steps {
                sh 'docker push subbulakshmisenthilmurugan/my-app'
            }
        }

        stage('Deploy to EKS') {
            steps {
                sh 'kubectl apply -f deployment.yaml'
                sh 'kubectl apply -f service.yaml'
            }
        }
    }
}
