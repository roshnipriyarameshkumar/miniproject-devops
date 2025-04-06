#!/bin/bash
docker build -t task_final .
echo Hyyy
docker login -u roshnipriya17 -p roshni123
docker tag task_final roshnipriya17/miniproject
docker push roshnipriya17/miniproject
kubectl apply -f  deploy.yaml --validate=false
kubectl apply -f svc.yaml --validate=false
