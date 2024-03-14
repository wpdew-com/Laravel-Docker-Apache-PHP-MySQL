THIS_FILE := $(lastword $(MAKEFILE_LIST))
.PHONY: build rebuild rebuild-app up migrate migrate-rollback migrate-fresh migration route-list test composer-install composer-update composer-du npm-install npm-update npm-build npm-host demo-install update git-upstream publish
app := lara11-web-1
app-npm := web

#composer
composer-install:
	docker exec $(app) composer install
composer-update:
	docker exec $(app) composer update
composer-du:
	docker exec $(app) composer du

#npm
npm-install:
	docker-compose run --rm --service-ports $(app-npm) install $(c)
npm-update:
	docker-compose run --rm --service-ports $(app-npm) update $(c)
npm-build:
	docker-compose run --rm --service-ports $(app-npm) run dev $(c)
npm-host:
	docker-compose run --rm --service-ports $(app-npm) run dev --host $(c)

echo:
	$(info )
	$(info ## Made with love by https://wpdew.com/  ##)
	$(info ##                                       ##)
	$(info **    http://localhost - Laravel         **)
	$(info **    http://localhost:8080 - Adminer    **)
	$(info ##                                       ##)
	$(info ###########################################)
	$(info )
	@touch .message_printed

#build docker
build:
	docker-compose up -d --build
	docker-compose up -d
	docker exec $(app) composer install
	docker exec $(app) composer update
	docker exec $(app) cp .env.example .env
	docker exec $(app) php artisan key:generate
	docker exec $(app) php artisan migrate
	docker exec $(app) php artisan db:seed
	@$(MAKE) echo

#make npm-install
	
#start docker
up:
	docker-compose up -d
	@$(MAKE) echo

#stop docker
stop:
	docker-compose down

#restart docker 
restart:
	docker-compose down
	docker-compose up -d
	@$(MAKE) echo


