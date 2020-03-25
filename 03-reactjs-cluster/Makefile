include ../Makefile

APP_NAME=my-react-app
IMAGE_TAG=reiniel/my-react-app:latest

# ---------------------------------------------------------------------
# DEPLOYMENT COMMANDS
# ---------------------------------------------------------------------
deployment-apply:
	kubectl apply -f ./deploy/cluster.yml
	minikube service $(APP_NAME)

# ---------------------------------------------------------------------
# DOCKER COMMANDS
# ---------------------------------------------------------------------
docker-build:
	docker build -t $(IMAGE_TAG) -f ./deploy/Dockerfile .

docker-push:
	docker push $(IMAGE_TAG)

# ---------------------------------------------------------------------
# APPLICATIONS COMMANDS
# ---------------------------------------------------------------------
app-build:
	npm run build

app-docker-build: app-build docker-build docker-push
