ecrname="default"
cd /home/ubuntu/app/backend
docker-compose rm -sf deployment || true
docker rmi ${repoimage}
aws ecr get-login-password --region ${region} | docker login --username ${username} --password-stdin ${password}
docker pull ${repoimage}
docker-compose up -d deployment
