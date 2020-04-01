#!/usr/bin/env bash

# To run this script you need to have aws cli and jq installed:
# $ curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg" && sudo installer -pkg AWSCLIV2.pkg -target / && rm AWSCLIV2.pkg
# $ brew install jq
#
# After installing aws cli configure skole secrets with:
# $ aws configure

set -e

AWS_ECR_URL=630869177434.dkr.ecr.eu-central-1.amazonaws.com

aws --region eu-central-1 ecr get-login-password \
    | docker login \
        --password-stdin \
        --username AWS "$AWS_ECR_URL"

docker build -f backend/Dockerfile.prod -t backend-staging backend && docker tag backend-staging ${AWS_ECR_URL}/backend-staging:latest && docker push 630869177434.dkr.ecr.eu-central-1.amazonaws.com/backend-staging:latest &
 
docker build -f frontend/Dockerfile.prod -t frontend-staging --build-arg API_URL=https://dev-api.skoleapp.com/ --build-arg BACKEND_URL=https://dev-api.skoleapp.com/ --build-arg CLOUDMERSIVE_API_KEY=f0d72604-8df2-45e8-9d0b-09029ee16525 frontend && docker tag frontend-staging ${AWS_ECR_URL}/frontend-staging:latest && docker push ${AWS_ECR_URL}/frontend-staging:latest &

wait

TASK_DEF=$(aws ecs register-task-definition --cli-input-json file://task-definition-staging.json | jq -r .taskDefinition.taskDefinitionArn)

aws ecs update-service --task-definition "$TASK_DEF" --cluster skole-staging-cluster --service skole-staging-service --force-new-deployment > /dev/null

echo Deployed to staging succesfully!
