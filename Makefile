##########
# Docker
##########

run:
	docker image build -t jupyter_titanic . && \
    docker run --rm -p 8888:8888 --name jupyter_notebook jupyter_titanic


##################
# Docker-compose
##################

build:
	docker-compose build

up:
	docker-compose up
	make logs

up-d:
	docker-compose up -d
	make logs

down:
	docker-compose down

logs:
	docker-compose logs   # shows the login url with a token

reload:
	make down \
 		 up
