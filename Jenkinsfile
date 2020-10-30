pipeline {
  agent any
  triggers {
    pollSCM('*/5 * * * *')
  }
  stages{
       stage ('Build'){
        steps {
          //sh 'mvn clean package'
          sh 'mvn clean package'
        }
         post {
           success {
             echo 'Archiving...'
             archiveArtifacts artifacts:'**/target/*.war'
           }
         }
       }
       stage ('Deployments') {
         parallel{
           stage ('Deploy to Staging'){
             steps {
               sh "cp **/target/*.war /home/student/Downloads/tomcat-staging/webapps/"
             }
           }
           stage ('Deploy to prod') {
             steps {
               sh "cp **/target/*.war /home/student/Downloads/tomcat-prod/webapps/"
             }     
           }
         }
       }
    }
} 
  
