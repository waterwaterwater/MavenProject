pipeline {
  agent any
  stages{
       stage ('Build'){
        steps {
          build job: 'package'
        }
        post {
           success {
             echo 'Archiving...'
             archiveArtifacts artifacts:'**/*.war'
           }
         }
       }

      }
}
