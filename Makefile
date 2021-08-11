#!/usr/bin/make

#include .env
docker_bin= $(shell command -v docker 2> /dev/null)
docker_compose_bin= $(shell command -v docker-compose 2> /dev/null)
user=1000

.DEFAULT_GOAL := help

help: ## Show this help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z0-9_-]+:.*?## / {printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

---------------: ## ------[ ACTIONS ]---------
##Actions --------------------------------------------------
up: ## Start development containers
	$(docker_compose_bin) -f docker-compose.yml up -d

up-dev: ## Start development containers
	$(docker_compose_bin) -f docker-compose.dev.yml up -d

down: ## Stop all conteiners
	$(docker_compose_bin) down