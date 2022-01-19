docker build -t bia .
aws ecr get-login-password --region us-east-1 --profile bia | docker login --username AWS --password-stdin 233934463347.dkr.ecr.us-east-1.amazonaws.com/bia
docker tag bia:latest 233934463347.dkr.ecr.us-east-1.amazonaws.com/bia:latest
docker push 233934463347.dkr.ecr.us-east-1.amazonaws.com/bia:latest