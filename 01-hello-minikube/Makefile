create-deployment:
	kubectl create deployment hello-node --image=gcr.io/hello-minikube-zero-install/hello-node

create-service:
	kubectl expose deployment hello-node --type=LoadBalancer --port=8080

start: create-deployment create-service
	minikube service hello-node

delete-deployment:
	kubectl delete deployment hello-node

delete-service:
	kubectl delete service hello-node

stop: delete-service delete-deployment
