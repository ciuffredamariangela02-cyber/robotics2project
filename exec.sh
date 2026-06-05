#!/bin/bash
#  exec.sh  —  Open a new terminal inside the running container
#  Run from project root: ./exec.sh

CONTAINER_NAME="robotics2"

if ! docker ps --format '{{.Names}}' | grep -q "^${CONTAINER_NAME}$"; then
    echo " Container '${CONTAINER_NAME}' is not running."
    echo "   Start it first with:  ./run.sh"
    exit 1
fi

echo " Opening new shell in: ${CONTAINER_NAME}"
docker exec -it "${CONTAINER_NAME}" bash
