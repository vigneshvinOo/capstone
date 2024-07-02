pipeline {
    agent any
    environment 
        
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            } 
        }
        stage('Build and Push Docker Image') {
            when {
                branch 'dev'
            }
            steps {
                script {
                    sh 'git fetch'
                    sh 'chmod +x build.sh'
                    sh './build.sh'
                    
                    sh 'docker build -t vino0123/dev .'
                    sh 'docker push vino0123/dev'
                    
                    sh './deploy.sh'
                }
            }
        }
        stage('Build and Push Docker Image for Master') {
            when {
                branch 'master'
            }
            steps {
                script {
                    sh 'git fetch'
                    sh 'chmod +x build.sh'
                    sh './build.sh'
                    sh 'docker build -t vino0123/prod .'
                    sh 'docker push vino0123/prod'
                    
                    sh './deploy.sh'
                }
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}
