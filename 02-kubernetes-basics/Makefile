APP_NAME=kubernetes-bootcamp

create-deployment:
	kubectl create deployment $(APP_NAME) --image=gcr.io/google-samples/kubernetes-bootcamp:v1

delete-deployment:
	kubectl delete deployment $(APP_NAME)

deployments:
	kubectl get deployments

proxy:
	kubectl proxy

get-pods:
	kubectl get pods

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