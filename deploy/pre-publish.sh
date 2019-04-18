#!/usr/bin/env bash

projectName="${JOB_NAME}"
dockerImageName=${projectName}-${BUILD_TIMESTAMP}

echo '*********************************** 准备打包从Github仓库拉取的代码...*********************************************'
echo "**********${WORKSPACE}**********"
sudo tar --exclude .git --exclude *.tar.gz  -vzcf /tmp/${dockerImageName}.tar.gz -C  ${WORKSPACE} .  \
&& sudo mv /tmp/${dockerImageName}.tar.gz  ${WORKSPACE} \
&& echo '*********************************** 打包成功 *********************************************' \
&& echo '************************************** 准备发送至服务器... **********************************************'


