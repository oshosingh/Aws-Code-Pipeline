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
                git_cred = credentials('cred_name')
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
