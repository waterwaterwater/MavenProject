pipeline {
    agent any
    tools {
        maven 'localmvn'
    }
    stages {
        stage('Build') {
            steps {
                echo 'Building1..'
                echo 'Building2..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
