pipeline {
    agent any 
    
    stages{
        stage('install packages'){
            steps{
                apt-get update -y
            }
        }
        stage('get project'){
            environment {
                git_cred = credentials('8c6ce165-546f-427a-b92a-ce01e0197e9e')
            }
            steps{
                git login -u $git_cred_USR -p $git_cred_PSW
                git pull repo_url
            }
           
        }
        stage('build'){
            steps{
              mvn clean install  
            }
        }
        stage('docker image'){
            steps{
               docker build -t deployment . 
            }
        }
    }
  
}
