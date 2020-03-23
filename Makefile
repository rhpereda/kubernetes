start-minikube:
	minikube start

status:
	minikube status

stop-minikube:
	minikube stop

delete-minikube:
	minikube delete

dashboard:
	minikube dashboard

nodes:
	kubectl get nodes

info:
	kubectl cluster-info

version:
	kubectl version