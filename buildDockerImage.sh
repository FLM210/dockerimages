#!/bin/bash
pullImageName=`grep source imageInfo | awk '{print $2}'`
pushImageName=`grep image imageInfo | awk '{print $2}'`
version=`grep version imageInfo | awk '{print $2}'`


docker pull $pullImageName
docker tag $pullImageName registry.cn-hangzhou.aliyuncs.com/my_docker_images/images:$pushImageName-$version
docker push registry.cn-hangzhou.aliyuncs.com/my_docker_images/images:$pushImageName-$version