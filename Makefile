SHELL = /bin/bash

DOCKER_COMPOSE_RUN=docker-compose run --rm json-server sh -c

.PHONY: setup
setup:
	$(DOCKER_COMPOSE_RUN) "yarn && yarn generate"

.PHONY: generate
generate:
	$(DOCKER_COMPOSE_RUN) "yarn generate"

.PHONY: up
up:
	docker-compose down && docker-compose up

.PHONY: clean
clean:
	rm -rf node_modules && rm -f ./src/json-server/db.json
