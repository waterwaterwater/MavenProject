pipeline {
  agent any
  triggers {
    pollSCM('*/5 * * * *')
  }
  stages{
       stage ('Build'){
        steps {
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
               //build job: 'deploy_to_staging'
               sh "cp **/target/*.war /home/student/Downloads/tomcat-staging/webapps/"
             }
           }
           stage ('Deploy to prod') {
             steps {
               //timeout (time:5, unit:'DAYS'){
                //input message: "Approve Prod Deployment?"
               //}
               //build job: 'deploy_to_prod'
               sh "cp **/target/*.war /home/student/Downloads/tomcat-prod/webapps/"
             }     
           }
         }
       }
    }
} 
  
