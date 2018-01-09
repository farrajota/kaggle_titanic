##########
# Docker
##########

run:
	docker image build -t jupyter_titanic . && \
    docker run --rm -p 8080:8080 --name jupyter_notebook jupyter_titanic

##################
# Docker-compose
##################

DOCKERFILE=docker-compose.yml
DOCKERFILE_DEV=docker-compose.dev.yml

build:
	docker-compose -f $(DOCKERFILE) build

up:
	docker-compose -f $(DOCKERFILE) up -d

down:
	docker-compose -f $(DOCKERFILE) down

logs:
	docker-compose -f $(DOCKERFILE) logs

reload:
	make down \
 		 up

dev-up:
	docker-compose -f $(DOCKERFILE_DEV) up -d

dev-down:
	docker-compose -f $(DOCKERFILE_DEV) down

dev-logs:
	docker-compose -f $(DOCKERFILE_DEV) logs

dev-reload:
	make dev-down \
 		 dev-up
