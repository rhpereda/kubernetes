APP_NAME=kubernetes-bootcamp

create-deployment:
	kubectl create deployment $(APP_NAME) --image=gcr.io/google-samples/kubernetes-bootcamp:v1

get-deployment:
	kubectl get deployments

delete-deployment:
	kubectl delete deployment $(APP_NAME)

proxy:
	kubectl proxy

get-pods:
	kubectl get pods -o wide

pod-name:
	$(shell kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')

pod-apis:
	-curl "http://localhost:8001/$(shell make pod-name)"

describe-pods:
	kubectl describe pods

app-output:
	-curl "http://localhost:8001/api/v1/namespaces/default/pods/$(shell make pod-name)/proxy/"

logs:
	kubectl logs $(shell make pod-name)

execute:
	kubectl exec $(shell make pod-name) $(command)

container-session:
	kubectl exec -ti $(shell make pod-name) bash

# Module 4
run-deployment:
	kubectl run $(APP_NAME) --image=gcr.io/google-samples/kubernetes-bootcamp:v1 --port=8080

get-services:
	kubectl get services

expose:
	kubectl expose deployment/$(APP_NAME) --type="NodePort" --port 8080

describe-service:
	kubectl describe services/$(APP_NAME)

app-port:
	$(shell kubectl get services/kubernetes-bootcamp -o go-template='{{(index .spec.ports 0).nodePort}}')

test-app:
	-curl "http://$(shell minikube ip):$(shell make app-port)"

describe-deployment:
	kubectl describe deployment

get-pods-by-label:
	kubectl get pods -l $(label)

get-services-by-label:
	kubectl get services -l $(label)

apply-label:
	kubectl label pod $(shell make pod-name) $(label)

delete-service-by-label:
	kubectl delete service -l $(label)

# Module 5
get-replicas:
	kubectl get rs

scale:
	kubectl scale deployments/kubernetes-bootcamp --replicas=$(desired)