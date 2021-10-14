ecrname="default"
cd /home/ubuntu/app/backend
docker-compose rm -sf deployment || true
docker rmi 131872871854.dkr.ecr.us-east-2.amazonaws.com/deployment:latest
aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 131872871854.dkr.ecr.us-east-2.amazonaws.com
docker pull 131872871854.dkr.ecr.us-east-2.amazonaws.com/deployment:latest
docker-compose up -d deployment