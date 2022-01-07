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
              sh 'mvn clean install'  
            }
        }
        stage('docker image'){
            steps{
               sh 'docker build -t deployment .' 
          
            }
        }
    }
  
}
