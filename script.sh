docker build . -t laravel-kubernetes
docker tag laravel-kubernetes 127.0.0.1:5100/laravel-kubernetes:1.0
docker push 127.0.0.1:5100/laravel-kubernetes:1.0

kubectl apply -f ./kubernetes/deployment.yaml
kubectl apply -f ./kubernetes/service.yaml


#### You can use the following command to scale the Deployment:

### kubectl scale --replicas=2 deployment/laravel-kubernetes deployment "laravel-kubernetes" scaled

## sudo chmod -R 777 ./script.sh