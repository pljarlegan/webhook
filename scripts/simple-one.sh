#!/bin/sh

get_container_ID_by_image_name () {
  IMAGE_NAME=$1
  echo "Find container id with image name = $IMAGE_NAME ..."
  # get docker id
  ID=$(curl --silent --unix-socket /var/run/docker.sock http:/v1.24/containers/json?all=true | jq -r "map(select(.Image==\"$IMAGE_NAME\"))|.[0].Id")
  echo "Container id = $ID"

  if [ "null" = "$ID" ]; then
    echo "Unable to find container, exit now"
    exit 1
  fi
}

restart_container () {
  CONTAINER_ID=$1
  echo "Restart container ..."
  curl -X POST --unix-socket /var/run/docker.sock "http:/v1.24/containers/$CONTAINER_ID/restart" 
}

start () {
  echo ""
  get_container_ID_by_image_name webhook_webhook
#   restart_container $ID
}

start