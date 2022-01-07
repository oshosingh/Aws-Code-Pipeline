pipeline {
    agent any 
    
    stages{
        stage('install packages'){
            steps{
                echo 'install packages'
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
