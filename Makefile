include ../Makefile.cluster

APP_NAME=
IMAGE_TAG=

# ---------------------------------------------------------------------
# DEPLOYMENT COMMANDS
# ---------------------------------------------------------------------
deployment-create:
	kubectl create deployment $(APP_NAME) --image=$(IMAGE_TAG)

deployment-delete:
	kubectl delete deployment $(APP_NAME)

deployment-describe:
	kubectl describe deployment $(APP_NAME)

deployment-get:
	kubectl get deployments $(APP_NAME)

# ---------------------------------------------------------------------
# SERVICES COMMANDS
# ---------------------------------------------------------------------
service-create:
	kubectl expose deployment $(APP_NAME) --type=LoadBalancer --port=8080

service-delete:
	kubectl delete service $(APP_NAME)

service-describe:
	kubectl describe services $(APP_NAME)

service-get:
	kubectl get services $(APP_NAME)

service-get-by-label:
	kubectl get services -l $(label)

# ---------------------------------------------------------------------
# PODS COMMANDS
# ---------------------------------------------------------------------
pods-describe:
	kubectl describe pods $(APP_NAME)

pods-get:
	kubectl get pods -o wide $(APP_NAME)

pods-get-by-label:
	kubectl get pods -l $(label)

pods-get-name:
	$(shell kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')

# ---------------------------------------------------------------------
# REPLICAS COMMANDS
# ---------------------------------------------------------------------
replicas-get:
	kubectl get rs

# ---------------------------------------------------------------------
# UTILITIES COMMANDS
# ---------------------------------------------------------------------
get-logs:
	kubectl logs $(shell make get-pod-name)

execute:
	kubectl exec $(shell make get-pod-name) $(command)

container-session:
	kubectl exec -ti $(shell make get-pod-name) bash

# ---------------------------------------------------------------------
# APPLICATIONS COMMANDS
# ---------------------------------------------------------------------
app-deploy: deployment-create service-create
	minikube service $(APP_NAME)

app-undeploy: service-delete deployment-delete

app-scale:
	kubectl scale deployments/$(APP_NAME) --replicas=$(desired)
