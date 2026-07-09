#!/bin/bash

CONTAINER_NAME="foxdroid-build"


if sudo docker ps -a --format '{{.Names}}' | grep -q "^${CONTAINER_NAME}$"; then
    echo "Loading container ^${CONTAINER_NAME}$..."
    sudo docker start -ai "$CONTAINER_NAME"
else
    echo "Creating new ^${CONTAINER_NAME}$ container..."
    sudo docker run -it --name "$CONTAINER_NAME" -v $(pwd):/content ubuntu:14.04 /bin/bash
fi