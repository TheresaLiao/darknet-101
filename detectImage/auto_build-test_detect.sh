CONTAINER_NAME=test_detect
IMAGE_NAME=yolo_detect:0219


docker stop $CONTAINER_NAME && docker rm $CONTAINER_NAME
docker build -t $IMAGE_NAME .
docker run -ti -d --name $CONTAINER_NAME $IMAGE_NAME bash

