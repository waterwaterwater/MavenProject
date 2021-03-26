pipeline {
    agent any
    tools {
        maven 'localmvn'
    }
    stages {
        stage('Build') {
            input {
                message "are you hungy?"
                ok "Yes, I am"
                submitre "lex,john"
                parameters {
                    string(name: 'PERSON', defaultValue: 'Jenkins',
                           description: 'Description about qesstion')
                }
            }
            steps {
                echo "Hello, ${PERSON}"
                
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
