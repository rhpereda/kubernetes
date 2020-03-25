TAG_NAME=reiniel/my-react-app:latest

docker-build:
	npm run build && \
  	docker build -t $(TAG_NAME) -f ./deploy/Dockerfile . && \
  	docker push $(TAG_NAME)

start-app-cluster:
	kubectl apply -f ./deploy/cluster.yml

delete-app-cluster: delete-deployment delete-service

delete-deployment:
	kubectl delete deployment my-react-app-deployment

delete-service:
	kubectl delete service my-react-app-service

get-pods:
	kubectl get pods -o wide

pod-name:
	$(shell kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')

logs:
	kubectl logs $(shell make pod-name)

execute:
	kubectl exec $(shell make pod-name) $(command)

container-session:
	kubectl exec -ti $(shell make pod-name) bash

scale:
	kubectl scale deployments/my-react-app-deployment --replicas=$(desired)