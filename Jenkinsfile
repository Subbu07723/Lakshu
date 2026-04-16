pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'docker build -t subbulakshmisenthilmurugan/my-app .'
            }
        }
        stage('Push') {
            steps {
                sh 'docker push subbulakshmisenthilmurugan/my-app'
            }
        }
        stage('Deploy') {
            steps {
                sh 'kubectl apply -f deployment.yaml'
                sh 'kubectl apply -f service.yaml'
            }
        }
    }
}
