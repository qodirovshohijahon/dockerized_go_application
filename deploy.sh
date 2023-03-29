# k3d cluster create mycluster
kind create cluster --name demo-cluster
## TODO: Docker build and push

`docker build -t go_demo_app .`

`docker run -p 8080:8080 --name=go_app go_demo_app`


`docker tag go_demo_app sherqodirov/go_demo_app`
`docker push go_demo_app sherqodirov/go_demo_app`

## TODO: Deploy k8s manifests

*fix secret file based on your credentials for dockerhub registry*

kubectl apply -f kube/

