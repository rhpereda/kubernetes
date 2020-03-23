create-deployment:
	kubectl create deployment kubernetes-bootcamp --image=gcr.io/google-samples/kubernetes-bootcamp:v1

deployments:
	kubectl get deployments

proxy:
	kubectl proxy

pod-name:
	$(shell kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')

pod-apis:
	-curl "http://localhost:8001/$(shell make pod-name)"