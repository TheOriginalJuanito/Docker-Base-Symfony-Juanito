DOCKER_PROJECT_KEY=symfony_php

read -p "composer require" USER_package

docker exec -it $DOCKER_PROJECT_KEY composer require $USER_package
