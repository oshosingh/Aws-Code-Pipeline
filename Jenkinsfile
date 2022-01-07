pipeline {
    agent any 
    
    stages{
        steps('install packages'){
            apt-get update -y
        }
        steps('get project'){
            git login -u username -p password
            git pull repo_url
        }
        steps('build'){
            mvn clean install
        }
        steps('docker image'){
            docker build -t deployment .
        }
    }
  
}
