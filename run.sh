#!/usr/bin/env bash
docker-compose --project-directory . -f docker/docker-compose.yml build bumpversion

echo "home dir will be mounted at /hdir"
docker-compose --project-directory . -f docker/docker-compose.yml run \
		--rm \
		-v ${HOME}:/hdir \
		--name=bumpversion \
		bumpversion \
		bash

docker-compose  --project-directory . -f docker/docker-compose.yml down

