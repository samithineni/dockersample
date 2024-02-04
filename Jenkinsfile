pipeline{
    agent any
    tools{
        maven "M3"
    }
    stages{
        stage('Build Maven'){
            steps{
                 checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/samithineni/dockersample/']])
               bat  'mvn clean install'
             }
        }
        stage('Build Docker Image'){
            steps{
                script{
                    bat  'docker build -t asbcbabu/docsample .'
                }
            }

        }
        stage('Push Docker Image to Hub'){
            steps{
                script{
                    withCredentials([string(credentialsId: 'codetest', variable: 'codedecode')]) {
                    bat 'docker login -u asbcbabu -p codedecode'

                    bat 'docker push  asbcbabu/docsample'
}
                }
            }

        }
    }
}
