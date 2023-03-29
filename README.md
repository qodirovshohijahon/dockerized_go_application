# dockerized_go_application


docker build -t go_demo_app .

docker run -p 8080:8080 --name=go_app go_demo_app


docker tag go_demo_app sherqodirov/go_demo_app
