pipeline {
    agent any
    tools {
        maven 'localmvn'
    }
    stages {
        stage('Build') {
            input {
                message 'Are you hungree?'
                ok 'Yes, I am.'
                submitter 'lex,john'
                parameters {
                    string(name: 'PERSON', defaultValue: 'Jenkins',
                          description: 'Description about question')
                }
            }
            steps {
                echo "Hello ${PERSON}"
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
