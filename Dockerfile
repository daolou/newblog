# docker pm2镜像(https://pm2.io/doc/en/runtime/integration/docker/)
FROM keymetrics/pm2:8-alpine

# 设置容器的工作目录
WORKDIR /var/nodejs/newblog

# 将package.json拷贝到容器里
COPY package.json ./

# 安装依赖
RUN npm i

# 分割日志
RUN pm2 install pm2-logrotate
RUN pm2 set pm2-logrotate:compress true

EXPOSE 8080

# 启动node应用
CMD [ "pm2-runtime", "start", "./ecosystem.config.js" ]

# CMD npm start