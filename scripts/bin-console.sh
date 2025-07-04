DOCKER_PROJECT_KEY=symfony_php

read -p "./bin/console" USER_package

docker exec -it $DOCKER_PROJECT_KEY ./bin/console $USER_package
