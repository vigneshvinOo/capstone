pipeline {
    agent any
    stages {
        stage('Build and Push') {
            steps {
                script {
                    sh 'chmod +x build.sh'
                    sh './build.sh'
                    sh 'docker login -u vino0123 -p Jun!199708'
                    sh 'docker build -t vino0123/dev0 .'
                    sh 'docker push vino0123/dev0'
                    sh 'chmod +x deploy.sh'
                    sh './deploy.sh'
                }
            }
        }  
    }
}
