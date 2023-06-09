
pipeline{
  //agent{label "slave-linux"}
  agent any
    stages{
        /* stage("Git checkout"){
            steps{
                     git branch: 'main', credentialsId: 'github-creds', url: 'https://github.com/greeshmagit/circlecimvn.git'
                 }
        }*/
        stage ("installing jenkins and sonarqube"){
          steps{
                sh "docker compose up –build -d"
          }
        }  
        stage("Maven build"){
          steps{
                   sh 'mvn  clean package'
              }
        }
         stage("Docker build"){
              steps{
                           sh "docker build -t pgreeshma/circlecimvn:v1 ."
                           /*docker build -t <tag-name> -f <file-name>*/
                   }
          }
          stage("Docker push to nexus or ecr"){
               steps{
                        /*withCredentials([usernamePassword(credentialsId: 'nexus', passwordVariable: 'pwd', usernameVariable: 'user')]) {
                          sh "nexus login -u ${user} -p ${pwd}"
                          sh "docker push admin/webtest:v1"
                         }*/
                         
                         /* docker push to docker hub
                        withCredentials([usernamePassword(credentialsId: 'dockerhub', passwordVariable: 'pwd', usernameVariable: 'user')]) {
                          sh "docker login -u ${user} -p ${pwd}"
                          sh "docker push pgreeshma/webtest:v1" */
                          
                           sh "docker push pgreeshma/webtest:v1"
                        }
                   }
          }
     }

                      

