pipeline {
    agent any

    stages {

        stage('Build & Run Container') {
            steps {
                sh """
                docker rm -f myapp-container || true
                docker build -t myapp .
                docker run -d -p 8082:8080 --name myapp-container myapp
                """
            }
        }

    }

    post {
        success {
            echo '🚀 Deployment Successful!'
        }
        failure {
            echo '❌ Deployment Failed!'
        }
    }
}



