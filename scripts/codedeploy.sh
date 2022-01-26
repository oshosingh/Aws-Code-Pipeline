cd /home/ubuntu/app/backend
docker-compose rm -sf deployment || true
docker rmi 131872871854.dkr.ecr.amazonaws.com/springbackend:latest
aws ecr get-login-password --region <region> | docker login --username AWS --password-stdin 131872871854.dkr.ecr.amazonaws.com/springbackend
docker pull 131872871854.dkr.ecr.amazonaws.com/springbackend:latest
docker-compose up -d deployment
