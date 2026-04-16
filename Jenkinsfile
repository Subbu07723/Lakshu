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
                withCredentials([usernamePassword(credentialsId: 'docker-cred', usernameVariable: 'subbulakshmisenthilmurugan', passwordVariable: 'VRMQ-BZGV')]) {
                    sh '''
                    echo $PASS | docker login -u $USER --password-stdin
                    docker push subbulakshmisenthilmurugan/my-app
                    '''
                }
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
