pipeline {
    agent any
    tools {
        maven 'localmvn' 
    }
    stages {
        stage('Example') {
            steps {
                sh 'mvn --version'
            }
        }
    }
}
