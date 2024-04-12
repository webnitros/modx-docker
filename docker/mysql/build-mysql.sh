#!/bin/bash

IMAGE="modx-mysql-template:latest"
CONTAINER="modx-mysqlt"

# Запуск контейнера
#docker run -d --name modx-mysql --env-file .env -v ./docker/mysql/dumps:/docker-entrypoint-initdb.d mysql/mysql-server:8.0
docker image rm "$IMAGE" -f
docker rm modx-mysql -f
docker run -d --name "$CONTAINER" --env-file .env -v ./docker/mysql/dumps:/docker-entrypoint-initdb.d mysql/mysql-server:8.0

echo "Ожидание, пока контейнер полностью поднимется..."
while [ "$(docker inspect -f '{{.State.Running}}' "$CONTAINER")" != "true" ]; do
  sleep 5
done

# Ожидание появления сообщения в логах
echo "Ожидание, получение сообщения 'MySQL init process done. Ready for start up'"
while ! docker logs "$CONTAINER" | grep -qF "[Entrypoint] MySQL init process done. Ready for start up."; do
  sleep 5
done

echo "Comitting container..."
docker commit "$CONTAINER" "$IMAGE"
docker rm "$CONTAINER" -f

# Контейнер успешно поднят
echo "Image $IMAGE успешно собрано."
