pipeline {
    agent any 
    
    stages{
        steps('install packages'){
            sh 'apt-get update -y'
        }
        steps('get project'){
            sh 'git login -u username -p password'
            sh 'git pull repo_url'
        }
        steps('build'){
            mvn clean install
        }
        steps('docker image'){
            docker build -t deployment .
        }
    }
  
}
