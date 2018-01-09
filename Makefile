##########
# Docker
##########

DOCKERFILE=docker-compose.yml

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
