# dockerized_go_application


docker build -t go_demo_app .

docker run -p 8080:8080 --name=go_app go_demo_app


docker tag go_demo_app sherqodirov/go_demo_app



#### K8s deployment
To create namespace - kubectl apply -f kube/ns.yaml
echo -n 'registry-1.docker.io/v2/' | base64

kubectl create secret docker-registry regcred --docker-server=registry.hub.docker.com --docker-username=sherqodirov --docker-password=$her!3!777 --docker-email="gospodinqodirov1@gmail.com"

kubectl create secret docker-registry regcred \
    -n myns \
    --docker-server="registry-1.docker.io/v2/" \
    --docker-username="sherqodirov" \
    --docker-password="$her!3!777" \
    --docker-email="gospodinqodirov1@gmail.com"



kubectl config set-context --current --namespace=