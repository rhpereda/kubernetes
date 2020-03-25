include ../Makefile

APP_NAME=kubernetes-bootcamp
IMAGE_TAG=gcr.io/google-samples/kubernetes-bootcamp:v1

# ---------------------------------------------------------------------
# DEPLOYMENT COMMANDS
# ---------------------------------------------------------------------
deployment-run:
	kubectl run $(APP_NAME) --image=gcr.io/google-samples/kubernetes-bootcamp:v1 --port=8080

# ---------------------------------------------------------------------
# SERVICES COMMANDS
# ---------------------------------------------------------------------
services-expose:
	kubectl expose deployment/$(APP_NAME) --type="NodePort" --port 8080

services-delete-by-label:
	kubectl delete service -l $(label)

# ---------------------------------------------------------------------
# PODS COMMANDS
# ---------------------------------------------------------------------
pods-apply-label:
	kubectl label pod $(shell make pod-name) $(label)

pods-get-apis:
	-curl "http://localhost:8001/$(shell make pod-name)"

# ---------------------------------------------------------------------
# APPLICATIONS COMMANDS
# ---------------------------------------------------------------------
app-proxy:
	kubectl proxy

app-output:
	-curl "http://localhost:8001/api/v1/namespaces/default/pods/$(shell make pod-name)/proxy/"

app-port:
	$(shell kubectl get services/kubernetes-bootcamp -o go-template='{{(index .spec.ports 0).nodePort}}')

app-test:
	-curl "http://$(shell minikube ip):$(shell make app-port)"

app-update-image:
	kubectl set image deployments/kubernetes-bootcamp kubernetes-bootcamp=jocatalin/kubernetes-bootcamp:$(version)

app-confirm-update:
	kubectl rollout status deployments/$(APP_NAME)

app-update-rollback:
	kubectl rollout undo deployments/$(APP_NAME)