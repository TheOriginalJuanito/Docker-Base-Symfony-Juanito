DOCKER_PROJECT_KEY="symfony_php"

read -p "~" USER_COMMAND

docker exec -it "$DOCKER_PROJECT_KEY" bash -c "$USER_COMMAND"
