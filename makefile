DOCKER_PROJECT_KEY := symfony_php
DOCKER_BASE_CMD := docker exec -it $(DOCKER_PROJECT_KEY)


# In tis Mke file i have some comands wich do the same thig as others but this is becaus i hav e
comand:
	../scripts/comand.sh

bin-console:
	../scripts/bin-console.sh

start:
	docker-compose up --build

recipes:
	$(DOCKER_BASE_CMD) composer recipes

composer-require:
	$(DOCKER_BASE_CMD) composer require

require-known:
	../scripts/require-known.sh

cs-fix:
	$(DOCKER_BASE_CMD) ./vendor/bin/php-cs-fixer fix