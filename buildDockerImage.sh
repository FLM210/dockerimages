#!/bin/bash
imageName=`grep -i from Dockerfile|awk '{print $2}'  | awk -F/ '{print $NF}'| awk -F: '{print $1}'`

docker build -t registry.cn-hangzhou.aliyuncs.com/my_docker_images/images:$imageName .
docker push registry.cn-hangzhou.aliyuncs.com/my_docker_images/images:$imageName