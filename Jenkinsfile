pipeline {
    agent any 
    
    stages{
        stage('install packages'){
            steps{
                sh 'apt-get update -y'
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
