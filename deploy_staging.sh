#!/usr/bin/env sh

# to run this script you need to have aws cli and jq installed:
#
# $ curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg" && sudo installer -pkg AWSCLIV2.pkg -target / && rm AWSCLIV2.pkg
#
# $ brew install jq
#
#
# Then run this and provide the correct secrets:
# $ aws configure

set -e

aws ecr get-login --no-include-email --region eu-central-1 | bash

docker build -f backend/Dockerfile.prod -t backend-staging . && docker tag backend-staging 630869177434.dkr.ecr.eu-central-1.amazonaws.com/backend-staging:latest && docker push 630869177434.dkr.ecr.eu-central-1.amazonaws.com/backend-staging:latest
 
docker build -f frontend/Dockerfile.prod -t frontend-staging --build-arg API_URL=https://dev-api.skoleapp.com/ --build-arg BACKEND_URL=https://dev-api.skoleapp.com/ --build-arg CLOUDMERSIVE_API_KEY=f0d72604-8df2-45e8-9d0b-09029ee16525 . && docker tag frontend-staging 630869177434.dkr.ecr.eu-central-1.amazonaws.com/frontend-staging:latest && docker push 630869177434.dkr.ecr.eu-central-1.amazonaws.com/frontend-staging:latest

TASK_DEF=$(aws ecs register-task-definition --cli-input-json file://task-definition-staging.json | jq -r .taskDefinition.taskDefinitionArn)

aws ecs update-service --task-definition "$TASK_DEF" --cluster skole-staging-cluster --service skole-staging-service --force-new-deployment > /dev/null