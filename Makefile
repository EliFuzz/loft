SHELL = /bin/bash

DOCKER_COMPOSE_RUN=docker-compose run --rm json-server sh -c

.PHONY: setup
setup:
	$(DOCKER_COMPOSE_RUN) "yarn && yarn generate"

.PHONY: generate
generate:
	$(DOCKER_COMPOSE_RUN) "yarn generate"

.PHONY: init
init:
	$(DOCKER_COMPOSE_RUN) "yarn install"

.PHONY: up
up:
	docker-compose up -d

.PHONY: down
down:
	docker-compose down

.PHONY: clean
clean:
	rm -rf node_modules && rm -f ./src/json-server/db.json
