pipeline {
    agent any

    environment {
        IMAGE = "subbulakshmisenthilmurugan/trendapp"
    }

    stages {

        stage('Clone') {
            steps {
                git 'https://github.com/Subbu07723/Lakshu.git'
            }
        }

        stage('Build') {
            steps {
                sh 'docker build -t $IMAGE .'
            }
        }

        stage('Login DockerHub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'USER', passwordVariable: 'PASS')]) {
                    sh 'echo $PASS | docker login -u $USER --password-stdin'
                }
            }
        }

        stage('Push') {
            steps {
                sh 'docker push $IMAGE'
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
