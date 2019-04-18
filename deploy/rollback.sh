#!/usr/bin/env bash

trim()
{
    trimmed=$1
    trimmed=${trimmed%% }
    trimmed=${trimmed## }
    echo "$trimmed"
}

# projectName=$(trim "${container_name}")
projectName="newBlog"

dockerImageName=$(trim "${image_name}")

echo "******************************************* 回退到镜像${image_name} ，并启动容器${container_name} **************** *******************************"
sudo mkdir -p /var/nodejs/logs/${projectName} || true \
&& sudo docker stop ${projectName} || true \
&& sudo docker rm ${projectName} || true \
&& sudo docker run -d --net=host --name ${projectName} -v /var/nodejs/logs/${projectName}:/var/nodejs/${projectName}/logs ${dockerImageName} \
&& echo "************************************* 使用镜像${dockerImageName}启动容器${projectName}  finish *************************************"