#!/bin/bash

docker build -t franck20/multi-client:latest -t franck20/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t franck20/multi-server:latest -t franck20/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t franck20/multi-worker:latest -t franck20/multi-worker:$SHA -f ./worker/Dockerfile ./worker

docker push franck20/multi-client:latest
docker push franck20/multi-server:latest
docker push franck20/multi-worker:latest

docker push franck20/multi-client:$SHA
docker push franck20/multi-server:$SHA
docker push franck20/multi-worker:$SHA

kubectl apply -f k8s

kubectl set image deployments/client-deployment client=franck20/multi-client:$SHA
kubectl set image deployments/server-deployment server=franck20/multi-server:$SHA
kubectl set image deployments/worker-deployment worker=franck20/multi-worker:$SHA