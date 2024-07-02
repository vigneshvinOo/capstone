pipeline {
    agent any
    stages {
        stage("build&push") {
            steps{
                script {
                    sh 'chmod +x build.sh'
                    sh './build.sh'
                    docker login -u vino0123 -p Jun!199708
                    docker push vino0123/dev
                    sh './deploy.sh'

                }
   
            }
        }  
    }
} 
