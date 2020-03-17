SHELL = /bin/bash

DOCKER_COMPOSE_RUN=docker-compose run --rm json-server sh -c
JSON_DB="./src/json-server/db.json"

.PHONY: up
up:
	[ -d node_modules ] || $(DOCKER_COMPOSE_RUN) "yarn" && [ -f $(JSON_DB) ] || $(DOCKER_COMPOSE_RUN) "yarn generate" && docker-compose up -d

.PHONY: down
down:
	docker-compose down

.PHONY: clean
clean:
	rm -rf node_modules && rm -f $(JSON_DB)
