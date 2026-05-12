pipeline{
    agent any
    stages{
        stage('Fetch Code'){
            steps{
                git 'https://github.com/Sangameshwaran-2001/Project1.git'
            }
        }
        stage('Build Image'){
            steps{
                sh 'docker build -t my-app-images:latest .'
            }
        }
        stage('Deploy Container'){
            steps{
                sh 'docker stop my-running-app || true'
                sh 'docker rm my-running-app || true'
                sh 'docker run -d -p 8080:80 --name my-running-app my-app-images:latest'
            }
        }
    }
}
