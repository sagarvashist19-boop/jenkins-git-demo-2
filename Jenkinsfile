pipeline {
    agent any

    stages {

        stage('Test') {
            steps {
                sh 'whoami'
                sh 'docker --version'
            }
        }
 
        stage('Build Image') {
            steps {
                sh 'docker build -t myapp .'
            }
        }

        stage('Run Container') {
            steps {
                sh """
                docker rm -f myapp-container || true
                docker run -d -p 8081:80 --name myapp-container myapp
                """
            }
        }

    }
}

