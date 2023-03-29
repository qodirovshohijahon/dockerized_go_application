# dockerized_go_application


docker build -t go_demo_app .

docker run -p 8080:8080 --name=go_app go_demo_app


docker tag go_demo_app sherqodirov/go_demo_app



#### K8s deployment
To create namespace - kubectl apply -f kube/ns.yaml
echo -n 'registry-1.docker.io/v2/' | base64

```shell
kubectl create secret docker-registry regcred \
    -n myns \
    --docker-server="registry-1.docker.io/v2/" \
    --docker-username="#" \
    --docker-password="$" \
    --docker-email="echo@gmail.com"
```


kubectl config set-context --current --namespace=