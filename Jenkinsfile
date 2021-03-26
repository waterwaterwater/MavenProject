pipeline {
    agent any
    tools {
        maven 'localmvn'
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn  --version'
                
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                build job: 'checkstyle'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
